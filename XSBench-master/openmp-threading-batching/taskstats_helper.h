#ifndef TASKSTATS_HELPER_H
#define TASKSTATS_HELPER_H

extern "C" {
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stddef.h>
#include <string.h>
#include <errno.h>
#include <sys/socket.h>
#include <linux/netlink.h>
#include <linux/genetlink.h>
#include <linux/taskstats.h>
// #include "../../linux-sources/linux-6.7.2-modified-pf-handler/include/uapi/linux/taskstats.h"
}

/* Only the tiny helpers we actually need */
// #define GENLMSG_DATA(glh) ((void *)(NLMSG_DATA(glh) + GENL_HDRLEN))
// causes warning: ISO C++ forbids adding integer to a pointer of type 'void *'
// solution: cast to char* first, then back to void*
#define GENLMSG_DATA(glh) ((void *)((char *)(NLMSG_DATA(glh)) + GENL_HDRLEN))
#define NLA_DATA(na) ((void *)((char*)(na) + NLA_HDRLEN))
#define NLA_PAYLOAD(len) (len - NLA_HDRLEN)

struct msgtemplate {
	struct nlmsghdr n;
	struct genlmsghdr g;
	char buf[512];
};

/* Ask generic netlink for the family id of TASKSTATS */
static int get_family_id(int sd) {
	struct msgtemplate req = {0};
	struct msgtemplate ans = {0};
	struct nlattr *na;
	int rep_len;

	req.n.nlmsg_len = NLMSG_LENGTH(GENL_HDRLEN);
	req.n.nlmsg_type = GENL_ID_CTRL;
	req.n.nlmsg_flags = NLM_F_REQUEST;
	req.n.nlmsg_seq = 0;
	req.n.nlmsg_pid = getpid();
	req.g.cmd = CTRL_CMD_GETFAMILY;
	req.g.version = 1;

	na = (struct nlattr *) req.buf;
	na->nla_type = CTRL_ATTR_FAMILY_NAME;
	na->nla_len = NLA_HDRLEN + strlen(TASKSTATS_GENL_NAME) + 1;
	memcpy(NLA_DATA(na), TASKSTATS_GENL_NAME, strlen(TASKSTATS_GENL_NAME) + 1);
	req.n.nlmsg_len += NLMSG_ALIGN(na->nla_len);

	if (send(sd, &req, req.n.nlmsg_len, 0) < 0)
		return -1;

	rep_len = recv(sd, &ans, sizeof(ans), 0);
	if (rep_len < 0 || ans.n.nlmsg_type == NLMSG_ERROR)
		return -1;

	/* First attr is family name we sent, second should be ID */
	na = (struct nlattr *) GENLMSG_DATA(&ans.n);
	na = (struct nlattr *) ((char*)na + NLA_ALIGN(na->nla_len));
	if (na->nla_type == CTRL_ATTR_FAMILY_ID)
		return *(__u16 *) NLA_DATA(na);
	return -1;
}

static int open_taskstats_socket(void) {
	int sd = socket(AF_NETLINK, SOCK_RAW, NETLINK_GENERIC);
	if (sd < 0)
		return -1;
	struct sockaddr_nl addr;
	memset(&addr, 0, sizeof(addr));
	addr.nl_family = AF_NETLINK;
	addr.nl_pid = getpid();
	if (bind(sd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
		close(sd);
		return -1;
	}
	return sd;
}

static int request_taskstats_pid(int sd, int family_id, pid_t pid, struct taskstats *out_ts, size_t *out_len) {
	struct msgtemplate req = {0};
	struct msgtemplate rep = {0};
	struct nlattr *na;

	*out_len = 0;
	memset(out_ts, 0, sizeof(*out_ts));

	req.n.nlmsg_len = NLMSG_LENGTH(GENL_HDRLEN);
	req.n.nlmsg_type = family_id;
	req.n.nlmsg_flags = NLM_F_REQUEST;
	req.n.nlmsg_seq = 1;
	req.n.nlmsg_pid = getpid();
	req.g.cmd = TASKSTATS_CMD_GET;
	req.g.version = TASKSTATS_VERSION;

	na = (struct nlattr *) req.buf;
	// na->nla_type = TASKSTATS_CMD_ATTR_PID;  // Use PID to get stats for single thread
  na->nla_type = TASKSTATS_CMD_ATTR_TGID; // Use TGID to get stats for thread group (process) instead of single thread
	na->nla_len = NLA_HDRLEN + sizeof(pid);
	memcpy(NLA_DATA(na), &pid, sizeof(pid));
	req.n.nlmsg_len += NLMSG_ALIGN(na->nla_len);

	if (send(sd, &req, req.n.nlmsg_len, 0) < 0)
		return -1;
	if (recv(sd, &rep, sizeof(rep), 0) < 0)
		return -1;

	na = (struct nlattr *) GENLMSG_DATA(&rep.n);
	int rem = rep.n.nlmsg_len - NLMSG_LENGTH(GENL_HDRLEN);
	while (rem > 0 && na->nla_len >= NLA_HDRLEN && rem >= na->nla_len) {
		if (na->nla_type == TASKSTATS_TYPE_AGGR_PID || na->nla_type == TASKSTATS_TYPE_AGGR_TGID) {
			int aggr_len = NLA_PAYLOAD(na->nla_len);
			struct nlattr *n2 = (struct nlattr *) NLA_DATA(na);
			while (aggr_len > 0 && n2->nla_len >= NLA_HDRLEN && aggr_len >= n2->nla_len) {
				if (n2->nla_type == TASKSTATS_TYPE_STATS) {
					size_t payload = n2->nla_len - NLA_HDRLEN;
					if (payload > sizeof(*out_ts)) payload = sizeof(*out_ts);
					memcpy(out_ts, NLA_DATA(n2), payload);
					*out_len = payload;
					return 0;
				}
				int step2 = NLA_ALIGN(n2->nla_len);
				aggr_len -= step2;
				n2 = (struct nlattr *) ((char*)n2 + step2);
			}
		} else if (na->nla_type == TASKSTATS_TYPE_STATS) {
			size_t payload = na->nla_len - NLA_HDRLEN;
			if (payload > sizeof(*out_ts)) payload = sizeof(*out_ts);
			memcpy(out_ts, NLA_DATA(na), payload);
			*out_len = payload;
			return 0;
		}
		int step = NLA_ALIGN(na->nla_len);
		rem -= step;
		na = (struct nlattr *) ((char*)na + step);
	}
	return -1; /* Not found */
}

#define FIELD_AVAIL(len, field) ((len) >= (offsetof(struct taskstats, field) + sizeof(((struct taskstats*)0)->field)))

// Only master thread should call this function to get stats for the entire process
int get_taskstats(struct taskstats *ts){
  pid_t tgid = getpid();
  if (tgid <= 0) {
		fprintf(stderr, "Invalid PID\n");
		return 1;
	}
  int sd = open_taskstats_socket();
  if (sd < 0) { perror("socket/bind"); return 1; }
  int family_id = get_family_id(sd);
  if (family_id < 0) {
		fprintf(stderr, "TASKSTATS family not found (need CONFIG_TASKSTATS + privileges)\n");
		close(sd);
		return 1;
	}
  size_t ts_len;
  if (request_taskstats_pid(sd, family_id, tgid, ts, &ts_len) < 0 || ts_len == 0) {
    fprintf(stderr, "Failed to obtain taskstats for %d\n", tgid);
    close(sd);
    return 1;
  }
  close(sd);
  return 0;
}

#endif // TASKSTATS_HELPER_H
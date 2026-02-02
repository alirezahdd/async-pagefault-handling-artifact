import sys
import re
from collections import defaultdict

# using this variable we filter out functions with fewer than min_pagefaults_to_show pagefaults
min_pagefaults_to_show = 10

def extract_pcs(filename):
  """
  This function reads a file containing PCs (Program Counters) and extracts unique functions along with their PCs.

  Parameters:
  filename (str): The name of the file containing PCs.

  Returns:
  tuple: A tuple containing two lists. The first list contains unique function names, and the second list contains dictionaries, each representing a function and its PCs.
  """
  unique_functions = []
  pcs = []
  total_pagefaults = 0
  pattern = re.compile(r'\[(.*?)\+(.*?)\]')

  with open(filename, 'r') as file:
    for line in file:
      if line.__contains__('GenIndex') or line.__contains__('RelabelByDegree'):
        continue
      match = pattern.search(line)
      if match:
        if (not unique_functions.__contains__(match.group(1))):
          unique_functions.append(match.group(1))
    pcs = [{} for _ in range(len(unique_functions))]

  with open(filename, 'r') as file:  
    for line in file:
      if line.__contains__('GenIndex') or line.__contains__('RelabelByDegree'):
        continue
      match = pattern.search(line)
      if match:
        index=unique_functions.index(match.group(1))
        if match.group(2) not in pcs[index].keys():
          pcs[index][match.group(2)] = 0
        pcs[index][match.group(2)] += 1
        total_pagefaults += 1

    return unique_functions, pcs, total_pagefaults

# Main
if len(sys.argv) > 1:
  filename = sys.argv[1]
else:
  print("Please provide a filename as an argument.")
  exit(1)


unique_functions, pcs, total_pagefaults = extract_pcs(filename)
for function in unique_functions:
  for value in pcs[unique_functions.index(function)].values():
    if value > min_pagefaults_to_show:
      print(f"Function: {function}")
      break
  for pc, count in pcs[unique_functions.index(function)].items():
    if count > min_pagefaults_to_show:
      percentage = (count / total_pagefaults) * 100
      print(f"  {pc}: {count} ({percentage:.2f}%)")

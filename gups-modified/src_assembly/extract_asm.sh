#!/bin/bash

# USAGE  ./extract_asm.sh [OPTIONS] [ARG]
# OPTIONS: -j -l
# ARGS: binary file
# USAGE EXAMPLE ./extract_asm.sh -j -l bc

flag="-dS"	# objdump flag for disassembly

while getopts ":jl" opt; do
	case ${opt} in
		j )
			flag="$flag --visualize-jumps"
			;;
		l )
			flag="$flag -l"
			;;	
		\? )
			echo "Invalid option: -$OPTARG" >&2
			exit
			;;
	esac
done

shift $((OPTIND -1))	# without this shift the positional args still include options

if [ ! -f "../$1" ]; then		# if file does not exist
	echo "Could not find $1 binary file. You may want to compile it first"
	exit
fi

echo "objdump $flag ../$1 > $1.asm"
objdump $flag ../$1 > $1.asm

# USAGE EXAMPLE ./extract_asm.sh -j -l bc
#!/bin/sh

writefile="$1"
writestr="$2"

echo "woooo WRITER"

if [ $# -eq 0 ] || [ -z "$2" ] || [ -z "$1" ]; then
	echo "Missing arguments"
	exit 1
fi

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
	echo "Error: File could not be created."
fi

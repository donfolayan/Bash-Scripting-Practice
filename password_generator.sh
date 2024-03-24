#!/usr/bin/bash


#Password Generator

PASS=`date | sha256sum | cut -b 1-$1`

if [ "$#" -eq 0 ]; then
	echo "Usage: $0 length-of-password(integer)"
	exit 1

elif ! [[ "$1" =~ ^[0-9]+$ ]]; then
	echo "Usage: $0 integer"
        exit 1
else
	echo "Your Password is ${PASS}"
fi

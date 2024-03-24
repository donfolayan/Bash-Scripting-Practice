#!/usr/bin/bash

#Display a random quote

filename='quotes.txt'

declare -a quotes_array

while IFS= read -r line; do quotes_array+=("$line")
done < "$filename"

echo "${quotes_array[(( $RANDOM % 30 ))]}"

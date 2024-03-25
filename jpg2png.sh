#!/usr/bin/bash

#Convert JPG to PNG


if [ $# -eq 0 ]; then
	echo "Usage: $# [file-1] [file-2] ..... [file-n]"
	exit 1
fi

sudo apt install graphicsmagick-imagemagick-compat -y


for i in $@
do
	if [ -f $i ]; then
		file_name=`echo $i | sed "s/[.].*//"`
		convert $i $file_name.png
	else
		echo "ERROR: $i is not a regular file..."
		exit 1
	fi
done

echo "[+] File conversion completed..."

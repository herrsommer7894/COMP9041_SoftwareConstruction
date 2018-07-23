#!/bin/sh


if [ $# != 1  ]
then
	echo "1 Image only"
	exit
fi

image=$1

date=`ls -l "$image" | cut -d' ' -f9-12` 


convert -gravity south -pointsize 36 -draw "text 0,10 '$date'" "$image" "temporary_file.jpg"

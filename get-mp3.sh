#!/bin/bash

URL=$1

if [ -n $URL ]
then
	echo "Usage: $0 <url>"
	exit 1
fi

for f in `curl $URL | sed -ne 's/.*\(http[^"]*\.mp3\).*/\1/p'`
do
	curl -O $f
done

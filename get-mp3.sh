#!/bin/bash

URL=$1
for f in `curl $URL | sed -ne 's/.*\(http[^"]*\.mp3\).*/\1/p'`
do
	curl -O $f
done

#!/bin/bash
directory_name=$1
find $directory_name -name '*.sh'|
while read filename
do
echo "`cat $filename|head -2|tail -1|sed 's/^.//'` $filename > /dev/null 2>&-" >> /tmp/filelist
done
wait;

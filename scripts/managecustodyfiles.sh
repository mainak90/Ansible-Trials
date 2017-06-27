#!/bin/bash
directory_name=$1
find $directory_name -name '*.csv'|
while read filename
do
mv $filename ${filename::(-3)}`date +%I%M%S`.csv
#mv "$filename" "${file%.csv}"`date +%I%M%S`.csv
#mv $filename $filename`date +%I%M%S`
done
wait;

#!/bin/bash

app=$1

if [ -d /msservice/app/workspace/$app/project/scripts/data/ ]

then

cd /msservice/app/workspace/$app/project/scripts/data/ && zip /tmp/$app.zip $app*;

else 

echo "$app data folder not found";

exit 1;

fi;


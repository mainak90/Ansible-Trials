#!/bin/bash

app=$1

if [ -d /msservice/app/workspace/notebook/project/project-$app/scripts/data/ ]

then

cd /msservice/app/workspace/notebook/project/project-$app/scripts/data/ && zip /tmp/$app.zip *;

else 

echo "$app data folder not found";

exit 1;

fi;


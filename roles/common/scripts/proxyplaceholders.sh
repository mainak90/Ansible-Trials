#!/bin/bash
env=$1
app=$2
if [ -f /msservice/app/workspace/$app/project/scripts/data/$app-proxy.json ] && [ $env == 'itt' ]
then
#echo " Baal "
sed -i -e 's?\"${syncGwNormal\}"?\"http\://el3935\.bc\:4984\/"?g' /msservice/app/workspace/$app/project/scripts/data/$app-proxy.json
elif [ -f /msservice/app/workspace/$app/project/scripts/data/$app-proxy.json ] && [ $env == 'uat' ]
then
#echo " $env "
sed -i -e 's?\"${syncGwNormal\}"?\"http\://el3991\.ebc\.local\:4984\/"?g' /msservice/app/workspace/$app/project/scripts/data/$app-proxy.json
elif [ -f /msservice/app/workspace/$app/project/scripts/data/$app-proxy.json ] && [ $env == 'prod' ]
then
#echo " $env "
sed -i -e 's?\"${syncGwNormal\}"?\"http\://el4206\.ebc\.local\:4984\/"?g' /msservice/app/workspace/$app/project/scripts/data/$app-proxy.json
else
echo "File does not exist or environment variable is wrong"
fi;
 

#!/bin/bash
env=$1
app=$2
if [ -f /msservice/app/workspace/$app/project/scripts/data/$app-sync-gw-db.json ] && [ $env == 'itt' ]
then
#echo " Baal "
sed -i -e 's?\"${syncGwAdmin\}"?\"http\://el3935\.bc\:4985\/"?g' /msservice/app/workspace/$app/project/scripts/data/$app-sync-gw-db.json
elif [ -f /msservice/app/workspace/$app/project/scripts/data/$app-sync-gw-db.json ] && [ $env == 'uat' ]
then
#echo " $env "
sed -i -e 's?\"${syncGwAdmin\}"?\"http\://el3991\.ebc\.local\:4985\/"?g' /msservice/app/workspace/$app/project/scripts/data/$app-sync-gw-db.json
elif [ -f /msservice/app/workspace/$app/project/scripts/data/$app-sync-gw-db.json ] && [ $env == 'prod' ]
then
#echo " $env "
sed -i -e 's?\"${syncGwAdmin\}"?\"http\://el4206\.ebc\.local\:4985\/"?g' /msservice/app/workspace/$app/project/scripts/data/$app-sync-gw-db.json
else
echo "File does not exist or environment variable is wrong"
fi;
 

#!/bin/bash
env=$1
if [ -f /tmp/sync_gateway.json ] && [ $env == 'uat' ]
then
sed -i -e 's?\${couchbase\}?el3988\.ebc\.local?g' /tmp/sync_gateway.json && sed -i -e 's?\${greeter\-hook\}?el3987\.ebc\.local?g' /tmp/sync_gateway.json && sed -i -e 's?\${authorization\-profiles\}?el3987\.ebc\.local?g' /tmp/sync_gateway.json
elif [ -f /tmp/sync_gateway.json ] && [ $env == 'itt' ]
then
sed -i -e 's?\${couchbase\}?el3934\.bc?g' /tmp/sync_gateway.json && sed -i -e 's?\${greeter\-hook\}?el3922\.bc?g' /tmp/sync_gateway.json && sed -i -e 's?\${authorization\-profiles\}?el3922\.bc?g' /tmp/sync_gateway.json
else
echo "File does not exist or environment variable is wrong"
fi; 

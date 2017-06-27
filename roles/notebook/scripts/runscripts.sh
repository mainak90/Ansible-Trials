#!/bin/bash
env=$1
app=$2
if [ -f /app/node-apps/$2/scripts/create-all.sh ] && [ $env = 'itt' ]
then
        sh /app/node-apps/$2/scripts/create-all.sh http://el3935.bc:4985/greeter
elif [ -f /app/node-apps/$2/scripts/create-all.sh ] && [ $env = 'uat' ]
then
        sh /app/node-apps/$2/scripts/create-all.sh http://el3991.ebc.local:4985/greeter
elif [ -f /app/node-apps/$2/scripts/create-all.sh ] && [ $env = 'prod' ]
then
        sh /app/node-apps/$2/scripts/create-all.sh http://el4206.ebc.local:4985/greeter
else
echo "Please select one of itt, uat or prod as environment, and retry, please note the usage ./script.sh <env> <app>, also make sure that create-all.sh exists"
fi;

#!/bin/bash
#check if env variable is set
env=$1
if [ $env == 'itt' ]

then
 

     if [ "$COUCHBASE_CONFIG_BUCKET" == "couchbase://el3934.bc:8091/" ]
     then
     echo "Couchbase is set"
     else
     echo "Couchbase var was not set, set it just now"
     echo export COUCHBASE_CONFIG_BUCKET=couchbase://el3934.bc:8091/ >> ~/.bashrc
     echo export NODE_PATH=/app/node-apps/node/bin >> ~/.bashrc
     echo export PATH==$PATH:$NODE_PATH >> ~/.bashrc
     fi;

elif [ $env == 'uat' ]
      
then 

     if [ "$COUCHBASE_CONFIG_BUCKET" == "couchbase://el3991.ebc.local:8091/" ]

     then

     echo "Couchbase is set"
     else
     echo "Couchbase var was not set, set it just now"
     echo export COUCHBASE_CONFIG_BUCKET=couchbase://el3991.ebc.local:8091/ >> ~/.bashrc
     echo export NODE_PATH=/app/node-apps/node/bin >> ~/.bashrc
     echo export PATH==$PATH:$NODE_PATH >> ~/.bashrc
     fi;

elif [ $env == 'prod' ]

then

     if [ "$COUCHBASE_CONFIG_BUCKET" == "couchbase://el4190.ebc.local:8091/" ]
     then
     echo "Couchbase is set"
     else
     echo "Couchbase var was not set, set it just now"
     echo export COUCHBASE_CONFIG_BUCKET=couchbase://el4190.ebc.local:8091/ >> ~/.bashrc
     echo export NODE_PATH=/app/node-apps/node/bin >> ~/.bashrc
     echo export PATH==$PATH:$NODE_PATH >> ~/.bashrc
     fi;
else 

echo "Please provide one of the following environment a)itt b)uat or c)prod"

fi;



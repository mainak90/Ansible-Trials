#!/bin/bash
#check if env variable is set

if [ "$COUCHBASE_CONFIG_BUCKET" == "couchbase://el3771.bc/" ]

then

echo "Couchbase is set"
exit 0

#       if [ "$COUCHBASE_CONFIG_BUCKET" == "couchbase://el3771.bc/"]
#        echo "Couchbase is Set"
#        exit 0
#        else
#       echo "Couchbase is not Set"
#        exit 1
#        fi;

else

echo "Couchbase is not  set"
exit 1
fi;


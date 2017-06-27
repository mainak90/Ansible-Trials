#!/bin/bash
/opt/couchbase/bin/couchbase-cli bucket-flush -c 127.0.0.1:8091 -u Administrator -p admin01 --bucket greeter --force  --enable-flush=1
sleep 5
#/opt/couchbase/bin/couchbase-cli bucket-flush -c 127.0.0.1:8091 -u Administrator -p admin01 --bucket config --force  --enable-flush=1
#sleep 5
#/opt/couchbase/bin/couchbase-cli bucket-flush -c 127.0.0.1:8091 -u Administrator -p admin01 --bucket sandbox --force  --enable-flush=1

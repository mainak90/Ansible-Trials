#!/bin/bash
/opt/couchbase/bin/couchbase-cli cluster-init -c 127.0.0.1:8091 \
--cluster-username=Administrator \
--cluster-password=admin01 \
--cluster-port=8091 \
--cluster-ramsize=16384 \
--cluster-index-ramsize=1024

#!/bin/bash
/opt/couchbase/bin/couchbase-cli setting-cluster -c 127.0.0.1:8091 -u Administrator -p admin01 \
--cluster-name=cb-ce-uat

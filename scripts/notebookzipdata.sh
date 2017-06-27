#!/bin/bash

if [ -d /tmp/greeter-data/data/in/CSA ] && [ -d /tmp/greeter-data/data/in/MO ]

then

cd /tmp/greeter-data/data/in/CSA/ && tar -czvf /tmp/CSA.tar.gz * && cd /tmp/greeter-data/data/in/MO/ && tar -czvf /tmp/MO.tar.gz *;

else 

echo "data folder not found";

exit 1;

fi;

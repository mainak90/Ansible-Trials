#!/bin/bash

if [ -d /home/msservice/continuous-delivery/data/in/CSA ] && [ -d /home/msservice/continuous-delivery/data/in/MO ]

then

cd /home/msservice/continuous-delivery/data/in/CSA && tar -czvf /tmp/CSA.tar.gz * && cd /home/msservice/continuous-delivery/data/in/MO && tar -czvf /tmp/MO.tar.gz *;

else 

echo "data folder not found";

exit 1;

fi;

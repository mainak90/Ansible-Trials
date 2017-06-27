#!/bin/bash
env=$1
app=$2
if  [ "$env" == "itt" ] && [ "$app" == "sync_gateway" ]; then 
#echo "env is ITT"
{
if [ -f /home/msservice/sync_gateway.json ]; then
rm /home/msservice/sync_gateway.json 
fi && cd /home/msservice
wget http://el2604.bc:8585/s1m0ne/sync-gw/blob/itt/sync_gateway.json
chmod 775 /home/msservice/sync_gateway.json && scp /home/msservice/sync_gateway.json sync_gateway@el3935.bc:/home/sync_gateway
ssh sync_gateway@el3935.bc 'sudo systemctl stop sync_gateway' && sleep 15 && ssh sync_gateway@el3935.bc 'sudo systemctl start sync_gateway'
}
elif  [ "$env" == "lab" ] && [ "$app" == "sync_gateway" ]; then
#echo "env is LAB"
{
if [ -f /home/msservice/sync_gateway.json ]; then
rm /home/msservice/sync_gateway.json 
fi && cd /home/msservice
wget http://el2604.bc:8585/s1m0ne/sync-gw/blob/lab/sync_gateway.json
chmod 775 /home/msservice/sync_gateway.json && scp /home/msservice/sync_gateway.json sync_gateway@el3771.bc:/home/sync_gateway
ssh cbops@el3771.bc 'sudo systemctl stop sync_gateway' && sleep 15 && ssh cbops@el3771.bc 'sudo systemctl start sync_gateway'
}
else 
echo "Please check application and environment variable" && exit 1
fi;

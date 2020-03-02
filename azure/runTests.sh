#!/bin/bash

echo 'Save start time'
starttime=$(date +%FT%T+00:00)
echo "##vso[task.setvariable variable=starttime;isOutput=true;]$starttime"

cartsUrl=$(SERVICE_URL)
numofreqs=500
echo "Hit the service with $numofreqs requests"
curl --silent --output /dev/null "$cartsUrl/carts/[1-$numofreqs]/items"

echo 'Tests finished'
echo 'Save end time'
endtime=$(date +%FT%T+00:00)
echo "##vso[task.setvariable variable=endtime]$endtime"
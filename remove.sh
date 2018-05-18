#!/bin/bash
# @author: Daniel Hand
# https://danielhand.io

# Include secrets
. ../secrets.sh

# Vars
subnet_id=9
green=`tput setaf 2`
reset=`tput sgr0`

token=$(curl -s -k -X POST --user $ipam_creds https://ipam.handsoff.cloud/api/vcenterapi/user | python -c 'import sys, json; print json.load(sys.stdin)["data"]["token"]')
while read ip; do
curl -s -k -X DELETE -H "token: $token" "https://ipam.handsoff.cloud/api/vcenterapi/addresses/$ip/$subnet_id"
echo ""
done <ips.txt

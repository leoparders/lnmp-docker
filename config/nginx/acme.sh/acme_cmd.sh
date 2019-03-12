#!/bin/bash
source /var/acme.sh/acme.sh.env

if [ "$1" == "--checkdnsprovider" ] ;then
    if [ ! -f "/root/.acme.sh/dnsapi/dns_$2.sh" ]; then 
        echo "not found"
        exit 1
    else
        echo "found"
        exit 0 
    fi 
else
acme.sh $@
fi
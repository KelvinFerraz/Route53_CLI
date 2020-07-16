#!/bin/bash

mkdir domains_json
touch domains_toadd

# VARS 
VALUE=
ID_HOSTED = 


# Create files json in directory domains_json
for domain in $(cat domains_toadd); do 
    echo '{
    "Comment":"CNAME para '$domain'",
    "Changes":[
    {
        "Action":"CREATE",
        "ResourceRecordSet":{
            "Name":"'$domain'",
            "Type":"CNAME",
            "TTL":60,
            "ResourceRecords":[
                {
                "Value":"'$VALUE'"
                }
            ]
        }
    }
    ]
}' > domains_json/$domain.json
done

# Add CNAME to AWS ROUTE53
cd domains_json/
for i in * ; do
    echo "Adicionando CNAME $i.."
    echo ""
    sleep 1
    aws route53 change-resource-record-sets --hosted-zone-id ID_HOSTED --change-batch file://$i
done

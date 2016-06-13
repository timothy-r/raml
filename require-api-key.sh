#!/usr/bin/env bash

API_ID=$1

resources=`aws get-resources --rest-api-id $API_ID`

# iterate through the items array
# { "items":
#   [
#       {
#       "path": "/pets",
#       "resourceMethods":
#           {
#               "POST": {},
#               "GET": {}
#           },
#       "id": "755pvj",
#       "pathPart": "pets",
#       "parentId": "yrr2l010pk"
#       },
#       {
#       "path": "/",
#       "id": "yrr2l010pk"
#       }
#   ]
# }

# RESOURCE_ID=

# iterate through each resourceMethods object
# METHOD=
aws apigateway get-method --rest-api-id $API_ID --resource-id $RESOURCE_ID --http-method $METHOD


aws apigateway update-method --rest-api-id $API_ID --resource-id $RESOURCE_ID --http-method $METHOD --patch-operations 'op=replace,path=/apiKeyRequired,value=true,from=false'

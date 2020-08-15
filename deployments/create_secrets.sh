#!/bin/bash
#
#
export AWS_KEY_ID=`grep key_id ~/.aws/credentials|awk -F= '{print$2}'|sed 's/ //g'`
export AWS_SECRET_ACCESS_KEY=`grep access_key ~/.aws/credentials|awk -F= '{print$2}'|sed 's/ //g'`


#kubectl create secret generic  --from-env-file=$HOME/.aws/credentials
kubectl create secret generic  --from-literal AWS_KEY_ID=$AWS_KEY_ID --from-literal AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY=

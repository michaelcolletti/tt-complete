#!/bin/bash
#
#
#
description="DLM volume policy"
state=enabled
rolearn=arn:aws:iam::12345678910:role/AWSDataLifecycleManagerDefaultRole
poldetailsjson=policyDetails.json

aws dlm create-lifecycle-policy --description --state $state --execution-role-arn $rolearn --policy-details $file://poldetailsjson


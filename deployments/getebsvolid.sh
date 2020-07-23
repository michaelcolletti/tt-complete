#!/bin/bash
#
#
#
aws ec2 describe-volumes| egrep 'GP2|available|VolumeId'|tail -1|awk -F: '{print$2}'|sed s/\'//g|sed s/\"\//g|sed s/,//g 

#!/bin/bash
#
##

az=us-east-1a 
voltypeDB=nitro
voltypeMON=standard
sizeDB=40
sizeMON=50

aws ec2 create-volume --availability-zone $az --size $sizeDB --volume-type $voltypeDB 
aws ec2 create-volume --availability-zone $az --size $sizeMON --volume-type $voltypeMON
#--multi-attach-enabled 

#!/bin/bash
#
##

az=us-east-1a 
voltypeIO1=io1
voltypeST1=st1
voltypeGP2=gp2
voltypeLOG=standard
sizeIO1=20
sizeST1=500
sizeGP2=20
sizeLOG=50

aws ec2 create-volume --availability-zone $az --size $sizeIO1 --volume-type $voltypeIO1
aws ec2 create-volume --availability-zone $az --size $sizeST1 --volume-type $voltypeST1
aws ec2 create-volume --availability-zone $az --size $sizeGP2 --volume-type $voltypeGP2
aws ec2 create-volume --availability-zone $az --size $sizeLOG --volume-type $voltypeLOG
#--multi-attach-enabled 

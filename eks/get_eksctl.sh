#!/bin/bash
#
##
printf "Which platform, linux or mac?\n"
read plat

if [[ $plat == 'mac' ]]; then
brew tap weaveworks/tap && brew install weaveworks/tap/eksctl
else 
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
fi

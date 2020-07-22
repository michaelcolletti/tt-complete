#!/bin/bash
#
##
USERNAME=$1
KEY_FILENAME=GLOUD_AuthKEY

if [[ $# -ne '1' ]]; then
printf "We need a user an pw as arguments. \n"
exit
fi

ssh-keygen -t rsa -f ~/.ssh/$KEY_FILENAME -C $USERNAME


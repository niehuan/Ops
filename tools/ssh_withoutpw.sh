#! /bin/bash -e
if [ $# -ne 2 ] || [ $1 == '-h' ] || [ $1 == '--help' ]; then
echo -e "\E[35mUsage: $0 hostip password\E[0m"
exit
fi

SSHPASS=$2
export SSHPASS

if [ ! -f ~/.ssh/id_rsa ]; then
ssh-keygen -t rsa -P '' -f /root/.ssh/id_rsa 
fi
sshpass -e ssh-copy-id root@$1

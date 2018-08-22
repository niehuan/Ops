#! /bin/bash -e
netdev=`ls /sys/class/net/`

if ! grep eth0 netdev >> /dev/null; then

fi

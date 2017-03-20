#!/bin/sh

if [ -f /usr/bin/vmware-user-suid-wrapper ]
then
  /usr/bin/vmware-user-suid-wrapper &> /dev/null
fi



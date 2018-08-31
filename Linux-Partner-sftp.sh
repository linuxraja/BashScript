# Author Natraj Solai
# Script to check partner login
#/bin/bash
check=`tail -20  /var/log/secure | grep 0.0.0.0 | wc -l`
if [ $check -ne 0 ] ; then
mail -s "Deadlady-poker partner logged in to server - `date`" "user1@domain.com"  < /root/sftplogfile
fi

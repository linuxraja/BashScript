# DNS A Record Changing Alert - Change Domain and Ip address
echo "#################`date`#################"
echo "script starting"
state=`dig www.domain.com | grep 0.0.0.0 | grep -v grep | wc -l`
echo "Status variable returns $state"
if [ $state -ne 1 ] ; then (cat /home/linuxraja/scripts/msgbody.txt) |mailx -s "So and So IP address" "user1@domain.com, user2@domain.com"
echo "mail sent"
fi

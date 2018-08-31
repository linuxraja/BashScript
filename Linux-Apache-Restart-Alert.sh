# Author Natraj Solai 
# Alert When Apache Restarted
#!/bin/bash
APACHE_ERROR_LOG=/opt/apache/logs/error_log
DSTAMP=`grep "resuming normal operations" $APACHE_ERROR_LOG |tail -1 |cut -d "]" -f1`
while(true)
do
TEMP_DSTAMP=`grep "resuming normal operations" $APACHE_ERROR_LOG |tail -1 |cut -d "]" -f1`
if [ "$DSTAMP" != "$TEMP_DSTAMP" ];
then
mail -s "APACHE is restarted"  user1@domain.com << EOF
Apache restarted at $TEMP_DSTAMP
EOF
DSTAMP=$TEMP_DSTAMP
fi
sleep 5
done

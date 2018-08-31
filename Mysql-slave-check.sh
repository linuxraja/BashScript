# Author Natraj Solai
# This script will mail squirrelmail mail user Inbox size  
#!/bin/bash
tempFile="/tmp/mailBoxSizes-`date +%d%b%Y-%H%M%S`.txt"
find /mail/domains/ -type d -name "[cC][uU][rR]" -exec du -ks {} \; | sort -nr | head > $tempFile
mail -s "BigMailBoxes in MailGib"  user1@domain.com < $tempFile;
rm -f $tempFile;
exit 0

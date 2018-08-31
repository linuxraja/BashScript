# Author Natraj Solai
# .htaccess file Compare
#!/bin/bash
cd public_html/
echo "Comparing both htaccess files..." 
wget http://linuxraja.com/goodhtaccess/goodwphtaccess 
if diff .htaccess goodwphtaccess >/dev/null ; 
then 
echo "THIS FILE IS SAFE AND NOT CORRUPTED" 
else 
echo "THIS FILE SEEMS TO BE CORRUPTED. RENAMING IT NOW!" && mv .htaccess .htaccess.corrupted 
fi 
mv goodwphtaccess .htaccess
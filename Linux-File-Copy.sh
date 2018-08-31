# Command to copy file to all sub directories (one level)
find . -maxdepth 1 -type d  -exec cp /file1 {} \;

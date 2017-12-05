find . -name "*.sql" | grep -v setwan | sed -e s/^/rm\ /g > file
mv file /tmp/file1
cat /tmp/file1 | sed -e s/rm/cvs\ remove/g > /tmp/file2
sh /tmp/file1
#sh /tmp/file2
cvs ci -m "delete"

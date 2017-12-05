#!/bin/sh
#muhammad@muntaza.id

#script untuk hapus app di django


find   keapsipan  -name "*.py" >> /tmp/file1

cp /tmp/file1 /tmp/file2  
cat /tmp/file1 | sed  -e s/^/rm\ /g > /tmp/file1_rm 
cat /tmp/file2 | sed  -e s/^/cvs\ delete\ /g > /tmp/file2_cvs_delete 

#sh /tmp/file1_rm
#sh /tmp/file2_cvs_delete

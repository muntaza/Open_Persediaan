#!/bin/sh

find persediaan > file

sort /tmp/file3 > sort_file3
sort file > sort_file
diff sort_file3 sort_file
rm file sort_file3 sort_file

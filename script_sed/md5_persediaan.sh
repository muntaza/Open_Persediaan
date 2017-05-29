#!/bin/sh

cd persediaan
find . -exec md5 {} \; | sort > /tmp/file1_md5_sort
cd -
cd tmp/persediaan
find . -exec md5 {} \; | grep -v Tag | sort > /tmp/file2_md5_sort
cd -
diff /tmp/file1_md5_sort /tmp/file2_md5_sort | grep -v CVS | grep MD5

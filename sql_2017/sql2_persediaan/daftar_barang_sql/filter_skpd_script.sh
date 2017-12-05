cp daftar_barang.sh daftar_barang.sh_asli
cat daftar_barang.sh_asli \
 | grep -v -e rsud -e kehutanan -e distamben -e korpri -e batupiring -e paringinkota -e paringintimur \
 > daftar_barang.sh
cvs add *asli
cvs ci -m "add"

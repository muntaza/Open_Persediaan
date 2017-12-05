cp persediaan_barang3.sh persediaan_barang3.sh_asli
cat persediaan_barang3.sh_asli \
 | grep -v -e rsud -e kehutanan -e distamben -e korpri -e batupiring -e paringinkota -e paringintimur \
 > persediaan_barang3.sh
cvs add *asli
cvs ci -m "add"

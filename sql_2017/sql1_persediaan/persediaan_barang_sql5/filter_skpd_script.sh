cp persediaan_barang5.sh persediaan_barang5.sh_asli
cat persediaan_barang5.sh_asli \
 | grep -v -e rsud -e kehutanan -e distamben -e korpri -e batupiring -e paringinkota -e paringintimur \
 > persediaan_barang5.sh
cvs add *asli
cvs ci -m "add"

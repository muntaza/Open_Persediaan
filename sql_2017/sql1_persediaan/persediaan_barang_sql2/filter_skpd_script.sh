cp persediaan_barang2.sh persediaan_barang2.sh_asli
cat persediaan_barang2.sh_asli \
 | grep -v -e rsud -e kehutanan -e distamben -e korpri -e batupiring -e paringinkota -e paringintimur \
 > persediaan_barang2.sh

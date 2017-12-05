cp beban_barang3.sh beban_barang3.sh_asli
cat beban_barang3.sh_asli \
 | grep -v -e rsud -e kehutanan -e distamben -e korpri -e batupiring -e paringinkota -e paringintimur \
 > beban_barang3.sh
cvs add *asli
cvs ci -m "add"

#!/bin/sh

# build kabupaten

cat ../template_rekap_kabupaten.sql | head -3 > ../gabungan_persediaan_rekap_kabupaten.sql
sh ./persediaan_barang5_kabupaten_2017.sh
cat ../template_rekap_kabupaten.sql | tail -3 >> ../gabungan_persediaan_rekap_kabupaten.sql

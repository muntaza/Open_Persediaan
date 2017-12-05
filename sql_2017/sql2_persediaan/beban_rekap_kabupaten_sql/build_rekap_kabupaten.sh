#!/bin/sh

# build kabupaten

cat ../template_rekap_kabupaten.sql | head -3 > ../gabungan_beban_rekap_kabupaten.sql
sh ./beban_barang5_kabupaten_2017.sh
cat ../template_rekap_kabupaten.sql | tail -3 >> ../gabungan_beban_rekap_kabupaten.sql

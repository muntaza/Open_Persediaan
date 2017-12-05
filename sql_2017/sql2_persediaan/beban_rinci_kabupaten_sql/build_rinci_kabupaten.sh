#!/bin/sh

# build kabupaten

cat ../template_rinci_kabupaten.sql | head -3 > ../gabungan_beban_rinci_kabupaten.sql
sh ./beban_barang4_kabupaten_2017.sh
cat ../template_rinci_kabupaten.sql | tail -3 >> ../gabungan_beban_rinci_kabupaten.sql

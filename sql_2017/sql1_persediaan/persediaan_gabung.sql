DROP VIEW IF EXISTS view_persediaan_barang_masuk_kabupaten CASCADE;


CREATE VIEW view_persediaan_barang_masuk_kabupaten AS

SELECT
provinsi.nama_provinsi,
kabupaten.id_provinsi,

kabupaten.nama_kabupaten,
lokasi_bidang.id_kabupaten,

lokasi_bidang.nama_lokasi_bidang,
skpd.id_lokasi_bidang,

skpd.nama_skpd,
sub_skpd.id_skpd,

sub_skpd.nama_sub_skpd,
transaksi.id_sub_skpd,

transaksi.id as kode_transaksi,
date_part('year', transaksi.tanggal) as tahun,
transaksi.tanggal,
transaksi.keterangan,

jenis_transaksi.jenis_transaksi,
transaksi.id_jenis_transaksi,

persediaan.id as id_persediaan,
persediaan.jumlah,
persediaan.harga,

barang.nama_barang,
persediaan.id_barang as kode_barang,

satuan.satuan,
barang.id_satuan,

jenis_barang.jenis_barang,
barang.id_jenis_barang


FROM
provinsi join kabupaten ON kabupaten.id_provinsi = provinsi.id
join lokasi_bidang ON lokasi_bidang.id_kabupaten = kabupaten.id
join skpd ON skpd.id_lokasi_bidang = lokasi_bidang.id
join sub_skpd ON sub_skpd.id_skpd = skpd.id
join transaksi ON transaksi.id_sub_skpd = sub_skpd.id
join jenis_transaksi ON transaksi.id_jenis_transaksi = jenis_transaksi.id
join persediaan ON persediaan.id_transaksi = transaksi.id
join barang ON persediaan.id_barang = barang.id
join satuan ON barang.id_satuan = satuan.id
join jenis_barang ON barang.id_jenis_barang = jenis_barang.id
join masuk ON masuk.id_transaksi = transaksi.id



WHERE
1 = 1
AND jenis_transaksi.id = 1
AND masuk.id_asal_usul != 5;


GRANT ALL PRIVILEGES ON view_persediaan_barang_masuk_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_masuk_kabupaten FROM lap_kabupaten;
DROP VIEW IF EXISTS view_persediaan_barang_keluar_kabupaten CASCADE;


CREATE VIEW view_persediaan_barang_keluar_kabupaten AS

SELECT
provinsi.nama_provinsi,
kabupaten.id_provinsi,

kabupaten.nama_kabupaten,
lokasi_bidang.id_kabupaten,

lokasi_bidang.nama_lokasi_bidang,
skpd.id_lokasi_bidang,

skpd.nama_skpd,
sub_skpd.id_skpd,

sub_skpd.nama_sub_skpd,
transaksi.id_sub_skpd,

transaksi.id as kode_transaksi,
date_part('year', transaksi.tanggal) as tahun,
transaksi.tanggal,
transaksi.keterangan,

jenis_transaksi.jenis_transaksi,
transaksi.id_jenis_transaksi,

persediaan.id as id_persediaan,
persediaan.jumlah as jumlah,
persediaan.harga,

barang.nama_barang,
persediaan.id_barang as kode_barang,

satuan.satuan,
barang.id_satuan,

jenis_barang.jenis_barang,
barang.id_jenis_barang


FROM
provinsi join kabupaten ON kabupaten.id_provinsi = provinsi.id
join lokasi_bidang ON lokasi_bidang.id_kabupaten = kabupaten.id
join skpd ON skpd.id_lokasi_bidang = lokasi_bidang.id
join sub_skpd ON sub_skpd.id_skpd = skpd.id
join transaksi ON transaksi.id_sub_skpd = sub_skpd.id
join jenis_transaksi ON transaksi.id_jenis_transaksi = jenis_transaksi.id
join persediaan ON persediaan.id_transaksi = transaksi.id
join barang ON persediaan.id_barang = barang.id
join satuan ON barang.id_satuan = satuan.id
join jenis_barang ON barang.id_jenis_barang = jenis_barang.id
join keluar ON keluar.id_transaksi = transaksi.id


WHERE
1 = 1
AND jenis_transaksi.id = 2
AND keluar.id_jenis_keluar != 2;



GRANT ALL PRIVILEGES ON view_persediaan_barang_keluar_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_keluar_kabupaten FROM lap_kabupaten;
DROP VIEW IF EXISTS view_persediaan_barang_awayan CASCADE;

CREATE VIEW view_persediaan_barang_awayan AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 34


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 34

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_persediaan_barang_bappeda CASCADE;

CREATE VIEW view_persediaan_barang_bappeda AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 21


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 21

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_persediaan_barang_batumandi CASCADE;

CREATE VIEW view_persediaan_barang_batumandi AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 32


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 32

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_persediaan_barang_bkd CASCADE;

CREATE VIEW view_persediaan_barang_bkd AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 19


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 19

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang_bkppd CASCADE;

CREATE VIEW view_persediaan_barang_bkppd AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 26


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 26

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_bkppd FROM lap_bkppd;
DROP VIEW IF EXISTS view_persediaan_barang_bpbd CASCADE;

CREATE VIEW view_persediaan_barang_bpbd AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 39


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 39

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_persediaan_barang_bppd CASCADE;

CREATE VIEW view_persediaan_barang_bppd AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 48


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 48

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_bppd FROM lap_bppd;
DROP VIEW IF EXISTS view_persediaan_barang_dinkes CASCADE;

CREATE VIEW view_persediaan_barang_dinkes AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 5


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 5

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_persediaan_barang_disdik CASCADE;

CREATE VIEW view_persediaan_barang_disdik AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 7


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 7

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_persediaan_barang_dishub CASCADE;

CREATE VIEW view_persediaan_barang_dishub AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 4


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 4

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_persediaan_barang_disnakertrans CASCADE;

CREATE VIEW view_persediaan_barang_disnakertrans AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 41


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 41

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_disnakertrans FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_persediaan_barang_dko CASCADE;

CREATE VIEW view_persediaan_barang_dko AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 23


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 23

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dko FROM lap_dko;
DROP VIEW IF EXISTS view_persediaan_barang_dkp CASCADE;

CREATE VIEW view_persediaan_barang_dkp AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 15


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 15

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dkp FROM lap_dkp;
DROP VIEW IF EXISTS view_persediaan_barang_dkukmp CASCADE;

CREATE VIEW view_persediaan_barang_dkukmp AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 16


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 16

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dkukmp FROM lap_dkukmp;
DROP VIEW IF EXISTS view_persediaan_barang_dlh CASCADE;

CREATE VIEW view_persediaan_barang_dlh AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 22


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 22

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dlh FROM lap_dlh;
DROP VIEW IF EXISTS view_persediaan_barang_dpkp CASCADE;

CREATE VIEW view_persediaan_barang_dpkp AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 40


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 40

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dpkp FROM lap_dpkp;
DROP VIEW IF EXISTS view_persediaan_barang_dpmd CASCADE;

CREATE VIEW view_persediaan_barang_dpmd AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 10


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 10

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dpmd FROM lap_dpmd;
DROP VIEW IF EXISTS view_persediaan_barang_dpmptsp CASCADE;

CREATE VIEW view_persediaan_barang_dpmptsp AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 18


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 18

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dpmptsp FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_persediaan_barang_dppkb CASCADE;

CREATE VIEW view_persediaan_barang_dppkb AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 42


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 42

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dppkb FROM lap_dppkb;
DROP VIEW IF EXISTS view_persediaan_barang_dpppa CASCADE;

CREATE VIEW view_persediaan_barang_dpppa AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 11


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 11

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dpppa FROM lap_dpppa;
DROP VIEW IF EXISTS view_persediaan_barang_dpupr CASCADE;

CREATE VIEW view_persediaan_barang_dpupr AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 3


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 3

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dpupr FROM lap_dpupr;
DROP VIEW IF EXISTS view_persediaan_barang_dukcatpil CASCADE;

CREATE VIEW view_persediaan_barang_dukcatpil AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 12


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 12

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_persediaan_barang_halong CASCADE;

CREATE VIEW view_persediaan_barang_halong AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 35


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 35

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_halong FROM lap_halong;
DROP VIEW IF EXISTS view_persediaan_barang_inspektorat CASCADE;

CREATE VIEW view_persediaan_barang_inspektorat AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 20


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 20

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_persediaan_barang_juai CASCADE;

CREATE VIEW view_persediaan_barang_juai AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 33


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 33

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_juai FROM lap_juai;
DROP VIEW IF EXISTS view_persediaan_barang_kearsipan CASCADE;

CREATE VIEW view_persediaan_barang_kearsipan AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 44


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 44

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_kearsipan FROM lap_kearsipan;
DROP VIEW IF EXISTS view_persediaan_barang_kesbangpol CASCADE;

CREATE VIEW view_persediaan_barang_kesbangpol AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 24


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 24

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_persediaan_barang_kominfo CASCADE;

CREATE VIEW view_persediaan_barang_kominfo AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 43


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 43

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_kominfo FROM lap_kominfo;
DROP VIEW IF EXISTS view_persediaan_barang_lampihong CASCADE;

CREATE VIEW view_persediaan_barang_lampihong AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 31


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 31

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_persediaan_barang_paringin CASCADE;

CREATE VIEW view_persediaan_barang_paringin AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 28


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 28

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_persediaan_barang_paringinselatan CASCADE;

CREATE VIEW view_persediaan_barang_paringinselatan AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 36


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 36

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_persediaan_barang_pariwisata CASCADE;

CREATE VIEW view_persediaan_barang_pariwisata AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 46


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 46

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_pariwisata FROM lap_pariwisata;
DROP VIEW IF EXISTS view_persediaan_barang_perdagangan CASCADE;

CREATE VIEW view_persediaan_barang_perdagangan AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 47


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 47

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_perdagangan FROM lap_perdagangan;
DROP VIEW IF EXISTS view_persediaan_barang_perikanan CASCADE;

CREATE VIEW view_persediaan_barang_perikanan AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 45


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 45

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_perikanan FROM lap_perikanan;
DROP VIEW IF EXISTS view_persediaan_barang_perpustakaan CASCADE;

CREATE VIEW view_persediaan_barang_perpustakaan AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 8


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 8

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_perpustakaan FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_persediaan_barang_pertanian CASCADE;

CREATE VIEW view_persediaan_barang_pertanian AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 13


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 13

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_persediaan_barang_satpolpp CASCADE;

CREATE VIEW view_persediaan_barang_satpolpp AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 25


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 25

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_persediaan_barang_setda CASCADE;

CREATE VIEW view_persediaan_barang_setda AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 2


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 2

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_setda FROM lap_setda;
DROP VIEW IF EXISTS view_persediaan_barang_setwan CASCADE;

CREATE VIEW view_persediaan_barang_setwan AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 1


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 1

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_persediaan_barang_sosial CASCADE;

CREATE VIEW view_persediaan_barang_sosial AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 9


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 9

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sosial FROM lap_sosial;
DROP VIEW IF EXISTS view_persediaan_barang_tebingtinggi CASCADE;

CREATE VIEW view_persediaan_barang_tebingtinggi AS

SELECT
row_number() OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_masuk_kabupaten

WHERE
1 = 1  AND
id_skpd = 38


UNION ALL



SELECT
0 as serial,
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_sub_skpd,
id_sub_skpd,

kode_transaksi,
tahun,
tanggal,
keterangan,

jenis_transaksi,
id_jenis_transaksi,

id_persediaan,
0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 38

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_tebingtinggi FROM lap_tebingtinggi;
DROP VIEW IF EXISTS view_persediaan_barang2_awayan;

CREATE VIEW view_persediaan_barang2_awayan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_awayan

WHERE
1 = 1  AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_persediaan_barang2_bappeda;

CREATE VIEW view_persediaan_barang2_bappeda AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bappeda

WHERE
1 = 1  AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_persediaan_barang2_batumandi;

CREATE VIEW view_persediaan_barang2_batumandi AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_batumandi

WHERE
1 = 1  AND
id_skpd = 32;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_persediaan_barang2_bkd;

CREATE VIEW view_persediaan_barang2_bkd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bkd

WHERE
1 = 1  AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang2_bkppd;

CREATE VIEW view_persediaan_barang2_bkppd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bkppd

WHERE
1 = 1  AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bkppd FROM lap_bkppd;
DROP VIEW IF EXISTS view_persediaan_barang2_bpbd;

CREATE VIEW view_persediaan_barang2_bpbd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bpbd

WHERE
1 = 1  AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_persediaan_barang2_bppd;

CREATE VIEW view_persediaan_barang2_bppd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bppd

WHERE
1 = 1  AND
id_skpd = 48;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bppd FROM lap_bppd;
DROP VIEW IF EXISTS view_persediaan_barang2_dinkes;

CREATE VIEW view_persediaan_barang2_dinkes AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dinkes

WHERE
1 = 1  AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_persediaan_barang2_disdik;

CREATE VIEW view_persediaan_barang2_disdik AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_disdik

WHERE
1 = 1  AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_persediaan_barang2_dishub;

CREATE VIEW view_persediaan_barang2_dishub AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dishub

WHERE
1 = 1  AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_persediaan_barang2_disnakertrans;

CREATE VIEW view_persediaan_barang2_disnakertrans AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_disnakertrans

WHERE
1 = 1  AND
id_skpd = 41;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_disnakertrans FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_persediaan_barang2_dko;

CREATE VIEW view_persediaan_barang2_dko AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dko

WHERE
1 = 1  AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dko FROM lap_dko;
DROP VIEW IF EXISTS view_persediaan_barang2_dkp;

CREATE VIEW view_persediaan_barang2_dkp AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dkp

WHERE
1 = 1  AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dkp FROM lap_dkp;
DROP VIEW IF EXISTS view_persediaan_barang2_dkukmp;

CREATE VIEW view_persediaan_barang2_dkukmp AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dkukmp

WHERE
1 = 1  AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dkukmp FROM lap_dkukmp;
DROP VIEW IF EXISTS view_persediaan_barang2_dlh;

CREATE VIEW view_persediaan_barang2_dlh AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dlh

WHERE
1 = 1  AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dlh FROM lap_dlh;
DROP VIEW IF EXISTS view_persediaan_barang2_dpkp;

CREATE VIEW view_persediaan_barang2_dpkp AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dpkp

WHERE
1 = 1  AND
id_skpd = 40;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dpkp FROM lap_dpkp;
DROP VIEW IF EXISTS view_persediaan_barang2_dpmd;

CREATE VIEW view_persediaan_barang2_dpmd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dpmd

WHERE
1 = 1  AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dpmd FROM lap_dpmd;
DROP VIEW IF EXISTS view_persediaan_barang2_dpmptsp;

CREATE VIEW view_persediaan_barang2_dpmptsp AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dpmptsp

WHERE
1 = 1  AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dpmptsp FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_persediaan_barang2_dppkb;

CREATE VIEW view_persediaan_barang2_dppkb AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dppkb

WHERE
1 = 1  AND
id_skpd = 42;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dppkb FROM lap_dppkb;
DROP VIEW IF EXISTS view_persediaan_barang2_dpppa;

CREATE VIEW view_persediaan_barang2_dpppa AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dpppa

WHERE
1 = 1  AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dpppa FROM lap_dpppa;
DROP VIEW IF EXISTS view_persediaan_barang2_dpupr;

CREATE VIEW view_persediaan_barang2_dpupr AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dpupr

WHERE
1 = 1  AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dpupr FROM lap_dpupr;
DROP VIEW IF EXISTS view_persediaan_barang2_dukcatpil;

CREATE VIEW view_persediaan_barang2_dukcatpil AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dukcatpil

WHERE
1 = 1  AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_persediaan_barang2_halong;

CREATE VIEW view_persediaan_barang2_halong AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_halong

WHERE
1 = 1  AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_halong FROM lap_halong;
DROP VIEW IF EXISTS view_persediaan_barang2_inspektorat;

CREATE VIEW view_persediaan_barang2_inspektorat AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_inspektorat

WHERE
1 = 1  AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_persediaan_barang2_juai;

CREATE VIEW view_persediaan_barang2_juai AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_juai

WHERE
1 = 1  AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_juai FROM lap_juai;
DROP VIEW IF EXISTS view_persediaan_barang2_kearsipan;

CREATE VIEW view_persediaan_barang2_kearsipan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_kearsipan

WHERE
1 = 1  AND
id_skpd = 44;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_kearsipan FROM lap_kearsipan;
DROP VIEW IF EXISTS view_persediaan_barang2_kesbangpol;

CREATE VIEW view_persediaan_barang2_kesbangpol AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_kesbangpol

WHERE
1 = 1  AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_persediaan_barang2_kominfo;

CREATE VIEW view_persediaan_barang2_kominfo AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_kominfo

WHERE
1 = 1  AND
id_skpd = 43;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_kominfo FROM lap_kominfo;
DROP VIEW IF EXISTS view_persediaan_barang2_lampihong;

CREATE VIEW view_persediaan_barang2_lampihong AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_lampihong

WHERE
1 = 1  AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_persediaan_barang2_paringin;

CREATE VIEW view_persediaan_barang2_paringin AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_paringin

WHERE
1 = 1  AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_persediaan_barang2_paringinselatan;

CREATE VIEW view_persediaan_barang2_paringinselatan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_paringinselatan

WHERE
1 = 1  AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_persediaan_barang2_pariwisata;

CREATE VIEW view_persediaan_barang2_pariwisata AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_pariwisata

WHERE
1 = 1  AND
id_skpd = 46;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_pariwisata FROM lap_pariwisata;
DROP VIEW IF EXISTS view_persediaan_barang2_perdagangan;

CREATE VIEW view_persediaan_barang2_perdagangan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_perdagangan

WHERE
1 = 1  AND
id_skpd = 47;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_perdagangan FROM lap_perdagangan;
DROP VIEW IF EXISTS view_persediaan_barang2_perikanan;

CREATE VIEW view_persediaan_barang2_perikanan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_perikanan

WHERE
1 = 1  AND
id_skpd = 45;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_perikanan FROM lap_perikanan;
DROP VIEW IF EXISTS view_persediaan_barang2_perpustakaan;

CREATE VIEW view_persediaan_barang2_perpustakaan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_perpustakaan

WHERE
1 = 1  AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_perpustakaan FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_persediaan_barang2_pertanian;

CREATE VIEW view_persediaan_barang2_pertanian AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_pertanian

WHERE
1 = 1  AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_persediaan_barang2_satpolpp;

CREATE VIEW view_persediaan_barang2_satpolpp AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_satpolpp

WHERE
1 = 1  AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_persediaan_barang2_setda;

CREATE VIEW view_persediaan_barang2_setda AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_setda

WHERE
1 = 1  AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_setda FROM lap_setda;
DROP VIEW IF EXISTS view_persediaan_barang2_setwan;

CREATE VIEW view_persediaan_barang2_setwan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_setwan

WHERE
1 = 1  AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_persediaan_barang2_sosial;

CREATE VIEW view_persediaan_barang2_sosial AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_sosial

WHERE
1 = 1  AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_sosial FROM lap_sosial;
DROP VIEW IF EXISTS view_persediaan_barang2_tebingtinggi;

CREATE VIEW view_persediaan_barang2_tebingtinggi AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_tebingtinggi

WHERE
1 = 1  AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_tebingtinggi FROM lap_tebingtinggi;
DROP VIEW IF EXISTS view_persediaan_barang3_awayan;

CREATE VIEW view_persediaan_barang3_awayan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_awayan

WHERE
1 = 1  AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_persediaan_barang3_bappeda;

CREATE VIEW view_persediaan_barang3_bappeda AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_bappeda

WHERE
1 = 1  AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_persediaan_barang3_batumandi;

CREATE VIEW view_persediaan_barang3_batumandi AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_batumandi

WHERE
1 = 1  AND
id_skpd = 32;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_persediaan_barang3_bkd;

CREATE VIEW view_persediaan_barang3_bkd AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_bkd

WHERE
1 = 1  AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang3_bkppd;

CREATE VIEW view_persediaan_barang3_bkppd AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_bkppd

WHERE
1 = 1  AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bkppd FROM lap_bkppd;
DROP VIEW IF EXISTS view_persediaan_barang3_bpbd;

CREATE VIEW view_persediaan_barang3_bpbd AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_bpbd

WHERE
1 = 1  AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_persediaan_barang3_bppd;

CREATE VIEW view_persediaan_barang3_bppd AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_bppd

WHERE
1 = 1  AND
id_skpd = 48;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bppd FROM lap_bppd;
DROP VIEW IF EXISTS view_persediaan_barang3_dinkes;

CREATE VIEW view_persediaan_barang3_dinkes AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dinkes

WHERE
1 = 1  AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_persediaan_barang3_disdik;

CREATE VIEW view_persediaan_barang3_disdik AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_disdik

WHERE
1 = 1  AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_persediaan_barang3_dishub;

CREATE VIEW view_persediaan_barang3_dishub AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dishub

WHERE
1 = 1  AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_persediaan_barang3_disnakertrans;

CREATE VIEW view_persediaan_barang3_disnakertrans AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_disnakertrans

WHERE
1 = 1  AND
id_skpd = 41;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_disnakertrans FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_persediaan_barang3_dko;

CREATE VIEW view_persediaan_barang3_dko AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dko

WHERE
1 = 1  AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dko FROM lap_dko;
DROP VIEW IF EXISTS view_persediaan_barang3_dkp;

CREATE VIEW view_persediaan_barang3_dkp AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dkp

WHERE
1 = 1  AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dkp FROM lap_dkp;
DROP VIEW IF EXISTS view_persediaan_barang3_dkukmp;

CREATE VIEW view_persediaan_barang3_dkukmp AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dkukmp

WHERE
1 = 1  AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dkukmp FROM lap_dkukmp;
DROP VIEW IF EXISTS view_persediaan_barang3_dlh;

CREATE VIEW view_persediaan_barang3_dlh AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dlh

WHERE
1 = 1  AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dlh FROM lap_dlh;
DROP VIEW IF EXISTS view_persediaan_barang3_dpkp;

CREATE VIEW view_persediaan_barang3_dpkp AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dpkp

WHERE
1 = 1  AND
id_skpd = 40;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dpkp FROM lap_dpkp;
DROP VIEW IF EXISTS view_persediaan_barang3_dpmd;

CREATE VIEW view_persediaan_barang3_dpmd AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dpmd

WHERE
1 = 1  AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dpmd FROM lap_dpmd;
DROP VIEW IF EXISTS view_persediaan_barang3_dpmptsp;

CREATE VIEW view_persediaan_barang3_dpmptsp AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dpmptsp

WHERE
1 = 1  AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dpmptsp FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_persediaan_barang3_dppkb;

CREATE VIEW view_persediaan_barang3_dppkb AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dppkb

WHERE
1 = 1  AND
id_skpd = 42;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dppkb FROM lap_dppkb;
DROP VIEW IF EXISTS view_persediaan_barang3_dpppa;

CREATE VIEW view_persediaan_barang3_dpppa AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dpppa

WHERE
1 = 1  AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dpppa FROM lap_dpppa;
DROP VIEW IF EXISTS view_persediaan_barang3_dpupr;

CREATE VIEW view_persediaan_barang3_dpupr AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dpupr

WHERE
1 = 1  AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dpupr FROM lap_dpupr;
DROP VIEW IF EXISTS view_persediaan_barang3_dukcatpil;

CREATE VIEW view_persediaan_barang3_dukcatpil AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dukcatpil

WHERE
1 = 1  AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_persediaan_barang3_halong;

CREATE VIEW view_persediaan_barang3_halong AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_halong

WHERE
1 = 1  AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_halong FROM lap_halong;
DROP VIEW IF EXISTS view_persediaan_barang3_inspektorat;

CREATE VIEW view_persediaan_barang3_inspektorat AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_inspektorat

WHERE
1 = 1  AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_persediaan_barang3_juai;

CREATE VIEW view_persediaan_barang3_juai AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_juai

WHERE
1 = 1  AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_juai FROM lap_juai;
DROP VIEW IF EXISTS view_persediaan_barang3_kearsipan;

CREATE VIEW view_persediaan_barang3_kearsipan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_kearsipan

WHERE
1 = 1  AND
id_skpd = 44;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_kearsipan FROM lap_kearsipan;
DROP VIEW IF EXISTS view_persediaan_barang3_kesbangpol;

CREATE VIEW view_persediaan_barang3_kesbangpol AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_kesbangpol

WHERE
1 = 1  AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_persediaan_barang3_kominfo;

CREATE VIEW view_persediaan_barang3_kominfo AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_kominfo

WHERE
1 = 1  AND
id_skpd = 43;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_kominfo FROM lap_kominfo;
DROP VIEW IF EXISTS view_persediaan_barang3_lampihong;

CREATE VIEW view_persediaan_barang3_lampihong AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_lampihong

WHERE
1 = 1  AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_persediaan_barang3_paringin;

CREATE VIEW view_persediaan_barang3_paringin AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_paringin

WHERE
1 = 1  AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_persediaan_barang3_paringinselatan;

CREATE VIEW view_persediaan_barang3_paringinselatan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_paringinselatan

WHERE
1 = 1  AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_persediaan_barang3_pariwisata;

CREATE VIEW view_persediaan_barang3_pariwisata AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_pariwisata

WHERE
1 = 1  AND
id_skpd = 46;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_pariwisata FROM lap_pariwisata;
DROP VIEW IF EXISTS view_persediaan_barang3_perdagangan;

CREATE VIEW view_persediaan_barang3_perdagangan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_perdagangan

WHERE
1 = 1  AND
id_skpd = 47;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_perdagangan FROM lap_perdagangan;
DROP VIEW IF EXISTS view_persediaan_barang3_perikanan;

CREATE VIEW view_persediaan_barang3_perikanan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_perikanan

WHERE
1 = 1  AND
id_skpd = 45;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_perikanan FROM lap_perikanan;
DROP VIEW IF EXISTS view_persediaan_barang3_perpustakaan;

CREATE VIEW view_persediaan_barang3_perpustakaan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_perpustakaan

WHERE
1 = 1  AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_perpustakaan FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_persediaan_barang3_pertanian;

CREATE VIEW view_persediaan_barang3_pertanian AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_pertanian

WHERE
1 = 1  AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_persediaan_barang3_satpolpp;

CREATE VIEW view_persediaan_barang3_satpolpp AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_satpolpp

WHERE
1 = 1  AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_persediaan_barang3_setda;

CREATE VIEW view_persediaan_barang3_setda AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_setda

WHERE
1 = 1  AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_setda FROM lap_setda;
DROP VIEW IF EXISTS view_persediaan_barang3_setwan;

CREATE VIEW view_persediaan_barang3_setwan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_setwan

WHERE
1 = 1  AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_persediaan_barang3_sosial;

CREATE VIEW view_persediaan_barang3_sosial AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_sosial

WHERE
1 = 1  AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_sosial FROM lap_sosial;
DROP VIEW IF EXISTS view_persediaan_barang3_tebingtinggi;

CREATE VIEW view_persediaan_barang3_tebingtinggi AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_tebingtinggi

WHERE
1 = 1  AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_tebingtinggi FROM lap_tebingtinggi;
DROP VIEW IF EXISTS view_persediaan_barang4_awayan;

CREATE VIEW view_persediaan_barang4_awayan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_awayan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_persediaan_barang4_bappeda;

CREATE VIEW view_persediaan_barang4_bappeda AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_bappeda

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_persediaan_barang4_batumandi;

CREATE VIEW view_persediaan_barang4_batumandi AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_batumandi

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 32;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_persediaan_barang4_bkd;

CREATE VIEW view_persediaan_barang4_bkd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_bkd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang4_bkppd;

CREATE VIEW view_persediaan_barang4_bkppd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_bkppd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bkppd FROM lap_bkppd;
DROP VIEW IF EXISTS view_persediaan_barang4_bpbd;

CREATE VIEW view_persediaan_barang4_bpbd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_bpbd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_persediaan_barang4_bppd;

CREATE VIEW view_persediaan_barang4_bppd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_bppd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 48;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bppd FROM lap_bppd;
DROP VIEW IF EXISTS view_persediaan_barang4_dinkes;

CREATE VIEW view_persediaan_barang4_dinkes AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dinkes

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_persediaan_barang4_disdik;

CREATE VIEW view_persediaan_barang4_disdik AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_disdik

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_persediaan_barang4_dishub;

CREATE VIEW view_persediaan_barang4_dishub AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dishub

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_persediaan_barang4_disnakertrans;

CREATE VIEW view_persediaan_barang4_disnakertrans AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_disnakertrans

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 41;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_disnakertrans FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_persediaan_barang4_dko;

CREATE VIEW view_persediaan_barang4_dko AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dko

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dko FROM lap_dko;
DROP VIEW IF EXISTS view_persediaan_barang4_dkp;

CREATE VIEW view_persediaan_barang4_dkp AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dkp

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dkp FROM lap_dkp;
DROP VIEW IF EXISTS view_persediaan_barang4_dkukmp;

CREATE VIEW view_persediaan_barang4_dkukmp AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dkukmp

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dkukmp FROM lap_dkukmp;
DROP VIEW IF EXISTS view_persediaan_barang4_dlh;

CREATE VIEW view_persediaan_barang4_dlh AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dlh

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dlh FROM lap_dlh;
DROP VIEW IF EXISTS view_persediaan_barang4_dpkp;

CREATE VIEW view_persediaan_barang4_dpkp AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dpkp

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 40;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dpkp FROM lap_dpkp;
DROP VIEW IF EXISTS view_persediaan_barang4_dpmd;

CREATE VIEW view_persediaan_barang4_dpmd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dpmd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dpmd FROM lap_dpmd;
DROP VIEW IF EXISTS view_persediaan_barang4_dpmptsp;

CREATE VIEW view_persediaan_barang4_dpmptsp AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dpmptsp

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dpmptsp FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_persediaan_barang4_dppkb;

CREATE VIEW view_persediaan_barang4_dppkb AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dppkb

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 42;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dppkb FROM lap_dppkb;
DROP VIEW IF EXISTS view_persediaan_barang4_dpppa;

CREATE VIEW view_persediaan_barang4_dpppa AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dpppa

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dpppa FROM lap_dpppa;
DROP VIEW IF EXISTS view_persediaan_barang4_dpupr;

CREATE VIEW view_persediaan_barang4_dpupr AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dpupr

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dpupr FROM lap_dpupr;
DROP VIEW IF EXISTS view_persediaan_barang4_dukcatpil;

CREATE VIEW view_persediaan_barang4_dukcatpil AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dukcatpil

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_persediaan_barang4_halong;

CREATE VIEW view_persediaan_barang4_halong AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_halong

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_halong FROM lap_halong;
DROP VIEW IF EXISTS view_persediaan_barang4_inspektorat;

CREATE VIEW view_persediaan_barang4_inspektorat AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_inspektorat

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_persediaan_barang4_juai;

CREATE VIEW view_persediaan_barang4_juai AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_juai

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_juai FROM lap_juai;
DROP VIEW IF EXISTS view_persediaan_barang4_kearsipan;

CREATE VIEW view_persediaan_barang4_kearsipan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_kearsipan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 44;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_kearsipan FROM lap_kearsipan;
DROP VIEW IF EXISTS view_persediaan_barang4_kesbangpol;

CREATE VIEW view_persediaan_barang4_kesbangpol AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_kesbangpol

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_persediaan_barang4_kominfo;

CREATE VIEW view_persediaan_barang4_kominfo AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_kominfo

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 43;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_kominfo FROM lap_kominfo;
DROP VIEW IF EXISTS view_persediaan_barang4_lampihong;

CREATE VIEW view_persediaan_barang4_lampihong AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_lampihong

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_persediaan_barang4_paringin;

CREATE VIEW view_persediaan_barang4_paringin AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_paringin

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_persediaan_barang4_paringinselatan;

CREATE VIEW view_persediaan_barang4_paringinselatan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_paringinselatan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_persediaan_barang4_pariwisata;

CREATE VIEW view_persediaan_barang4_pariwisata AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_pariwisata

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 46;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_pariwisata FROM lap_pariwisata;
DROP VIEW IF EXISTS view_persediaan_barang4_perdagangan;

CREATE VIEW view_persediaan_barang4_perdagangan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_perdagangan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 47;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_perdagangan FROM lap_perdagangan;
DROP VIEW IF EXISTS view_persediaan_barang4_perikanan;

CREATE VIEW view_persediaan_barang4_perikanan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_perikanan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 45;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_perikanan FROM lap_perikanan;
DROP VIEW IF EXISTS view_persediaan_barang4_perpustakaan;

CREATE VIEW view_persediaan_barang4_perpustakaan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_perpustakaan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_perpustakaan FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_persediaan_barang4_pertanian;

CREATE VIEW view_persediaan_barang4_pertanian AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_pertanian

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_persediaan_barang4_satpolpp;

CREATE VIEW view_persediaan_barang4_satpolpp AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_satpolpp

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_persediaan_barang4_setda;

CREATE VIEW view_persediaan_barang4_setda AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_setda

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_setda FROM lap_setda;
DROP VIEW IF EXISTS view_persediaan_barang4_setwan;

CREATE VIEW view_persediaan_barang4_setwan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_setwan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_persediaan_barang4_sosial;

CREATE VIEW view_persediaan_barang4_sosial AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_sosial

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_sosial FROM lap_sosial;
DROP VIEW IF EXISTS view_persediaan_barang4_tebingtinggi;

CREATE VIEW view_persediaan_barang4_tebingtinggi AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_tebingtinggi

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_tebingtinggi FROM lap_tebingtinggi;
DROP VIEW IF EXISTS view_persediaan_barang5_awayan CASCADE;

CREATE VIEW view_persediaan_barang5_awayan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_awayan

WHERE
1 = 1  AND
id_skpd = 34

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_persediaan_barang5_bappeda CASCADE;

CREATE VIEW view_persediaan_barang5_bappeda AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_bappeda

WHERE
1 = 1  AND
id_skpd = 21

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_persediaan_barang5_batumandi CASCADE;

CREATE VIEW view_persediaan_barang5_batumandi AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_batumandi

WHERE
1 = 1  AND
id_skpd = 32

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_persediaan_barang5_bkd CASCADE;

CREATE VIEW view_persediaan_barang5_bkd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_bkd

WHERE
1 = 1  AND
id_skpd = 19

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang5_bkppd CASCADE;

CREATE VIEW view_persediaan_barang5_bkppd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_bkppd

WHERE
1 = 1  AND
id_skpd = 26

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_bkppd FROM lap_bkppd;
DROP VIEW IF EXISTS view_persediaan_barang5_bpbd CASCADE;

CREATE VIEW view_persediaan_barang5_bpbd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_bpbd

WHERE
1 = 1  AND
id_skpd = 39

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_persediaan_barang5_bppd CASCADE;

CREATE VIEW view_persediaan_barang5_bppd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_bppd

WHERE
1 = 1  AND
id_skpd = 48

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_bppd FROM lap_bppd;
DROP VIEW IF EXISTS view_persediaan_barang5_dinkes CASCADE;

CREATE VIEW view_persediaan_barang5_dinkes AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_dinkes

WHERE
1 = 1  AND
id_skpd = 5

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_persediaan_barang5_disdik CASCADE;

CREATE VIEW view_persediaan_barang5_disdik AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_disdik

WHERE
1 = 1  AND
id_skpd = 7

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_persediaan_barang5_dishub CASCADE;

CREATE VIEW view_persediaan_barang5_dishub AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_dishub

WHERE
1 = 1  AND
id_skpd = 4

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_persediaan_barang5_disnakertrans CASCADE;

CREATE VIEW view_persediaan_barang5_disnakertrans AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_disnakertrans

WHERE
1 = 1  AND
id_skpd = 41

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_disnakertrans FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_persediaan_barang5_dko CASCADE;

CREATE VIEW view_persediaan_barang5_dko AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_dko

WHERE
1 = 1  AND
id_skpd = 23

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dko FROM lap_dko;
DROP VIEW IF EXISTS view_persediaan_barang5_dkp CASCADE;

CREATE VIEW view_persediaan_barang5_dkp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_dkp

WHERE
1 = 1  AND
id_skpd = 15

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dkp FROM lap_dkp;
DROP VIEW IF EXISTS view_persediaan_barang5_dkukmp CASCADE;

CREATE VIEW view_persediaan_barang5_dkukmp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_dkukmp

WHERE
1 = 1  AND
id_skpd = 16

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dkukmp FROM lap_dkukmp;
DROP VIEW IF EXISTS view_persediaan_barang5_dlh CASCADE;

CREATE VIEW view_persediaan_barang5_dlh AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_dlh

WHERE
1 = 1  AND
id_skpd = 22

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dlh FROM lap_dlh;
DROP VIEW IF EXISTS view_persediaan_barang5_dpkp CASCADE;

CREATE VIEW view_persediaan_barang5_dpkp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_dpkp

WHERE
1 = 1  AND
id_skpd = 40

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dpkp FROM lap_dpkp;
DROP VIEW IF EXISTS view_persediaan_barang5_dpmd CASCADE;

CREATE VIEW view_persediaan_barang5_dpmd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_dpmd

WHERE
1 = 1  AND
id_skpd = 10

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dpmd FROM lap_dpmd;
DROP VIEW IF EXISTS view_persediaan_barang5_dpmptsp CASCADE;

CREATE VIEW view_persediaan_barang5_dpmptsp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_dpmptsp

WHERE
1 = 1  AND
id_skpd = 18

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dpmptsp FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_persediaan_barang5_dppkb CASCADE;

CREATE VIEW view_persediaan_barang5_dppkb AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_dppkb

WHERE
1 = 1  AND
id_skpd = 42

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dppkb FROM lap_dppkb;
DROP VIEW IF EXISTS view_persediaan_barang5_dpppa CASCADE;

CREATE VIEW view_persediaan_barang5_dpppa AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_dpppa

WHERE
1 = 1  AND
id_skpd = 11

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dpppa FROM lap_dpppa;
DROP VIEW IF EXISTS view_persediaan_barang5_dpupr CASCADE;

CREATE VIEW view_persediaan_barang5_dpupr AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_dpupr

WHERE
1 = 1  AND
id_skpd = 3

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dpupr FROM lap_dpupr;
DROP VIEW IF EXISTS view_persediaan_barang5_dukcatpil CASCADE;

CREATE VIEW view_persediaan_barang5_dukcatpil AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_dukcatpil

WHERE
1 = 1  AND
id_skpd = 12

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_persediaan_barang5_halong CASCADE;

CREATE VIEW view_persediaan_barang5_halong AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_halong

WHERE
1 = 1  AND
id_skpd = 35

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_halong FROM lap_halong;
DROP VIEW IF EXISTS view_persediaan_barang5_inspektorat CASCADE;

CREATE VIEW view_persediaan_barang5_inspektorat AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_inspektorat

WHERE
1 = 1  AND
id_skpd = 20

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_persediaan_barang5_juai CASCADE;

CREATE VIEW view_persediaan_barang5_juai AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_juai

WHERE
1 = 1  AND
id_skpd = 33

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_juai FROM lap_juai;
DROP VIEW IF EXISTS view_persediaan_barang5_kearsipan CASCADE;

CREATE VIEW view_persediaan_barang5_kearsipan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_kearsipan

WHERE
1 = 1  AND
id_skpd = 44

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_kearsipan FROM lap_kearsipan;
DROP VIEW IF EXISTS view_persediaan_barang5_kesbangpol CASCADE;

CREATE VIEW view_persediaan_barang5_kesbangpol AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_kesbangpol

WHERE
1 = 1  AND
id_skpd = 24

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_persediaan_barang5_kominfo CASCADE;

CREATE VIEW view_persediaan_barang5_kominfo AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_kominfo

WHERE
1 = 1  AND
id_skpd = 43

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_kominfo FROM lap_kominfo;
DROP VIEW IF EXISTS view_persediaan_barang5_lampihong CASCADE;

CREATE VIEW view_persediaan_barang5_lampihong AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_lampihong

WHERE
1 = 1  AND
id_skpd = 31

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_persediaan_barang5_paringin CASCADE;

CREATE VIEW view_persediaan_barang5_paringin AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_paringin

WHERE
1 = 1  AND
id_skpd = 28

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_persediaan_barang5_paringinselatan CASCADE;

CREATE VIEW view_persediaan_barang5_paringinselatan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_paringinselatan

WHERE
1 = 1  AND
id_skpd = 36

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_persediaan_barang5_pariwisata CASCADE;

CREATE VIEW view_persediaan_barang5_pariwisata AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_pariwisata

WHERE
1 = 1  AND
id_skpd = 46

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_pariwisata FROM lap_pariwisata;
DROP VIEW IF EXISTS view_persediaan_barang5_perdagangan CASCADE;

CREATE VIEW view_persediaan_barang5_perdagangan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_perdagangan

WHERE
1 = 1  AND
id_skpd = 47

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_perdagangan FROM lap_perdagangan;
DROP VIEW IF EXISTS view_persediaan_barang5_perikanan CASCADE;

CREATE VIEW view_persediaan_barang5_perikanan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_perikanan

WHERE
1 = 1  AND
id_skpd = 45

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_perikanan FROM lap_perikanan;
DROP VIEW IF EXISTS view_persediaan_barang5_perpustakaan CASCADE;

CREATE VIEW view_persediaan_barang5_perpustakaan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_perpustakaan

WHERE
1 = 1  AND
id_skpd = 8

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_perpustakaan FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_persediaan_barang5_pertanian CASCADE;

CREATE VIEW view_persediaan_barang5_pertanian AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_pertanian

WHERE
1 = 1  AND
id_skpd = 13

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_persediaan_barang5_satpolpp CASCADE;

CREATE VIEW view_persediaan_barang5_satpolpp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_satpolpp

WHERE
1 = 1  AND
id_skpd = 25

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_persediaan_barang5_setda CASCADE;

CREATE VIEW view_persediaan_barang5_setda AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_setda

WHERE
1 = 1  AND
id_skpd = 2

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_setda FROM lap_setda;
DROP VIEW IF EXISTS view_persediaan_barang5_setwan CASCADE;

CREATE VIEW view_persediaan_barang5_setwan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_setwan

WHERE
1 = 1  AND
id_skpd = 1

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_persediaan_barang5_sosial CASCADE;

CREATE VIEW view_persediaan_barang5_sosial AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_sosial

WHERE
1 = 1  AND
id_skpd = 9

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_sosial FROM lap_sosial;
DROP VIEW IF EXISTS view_persediaan_barang5_tebingtinggi CASCADE;

CREATE VIEW view_persediaan_barang5_tebingtinggi AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang4_tebingtinggi

WHERE
1 = 1  AND
id_skpd = 38

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang5_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_tebingtinggi FROM lap_tebingtinggi;
DROP VIEW IF EXISTS view_persediaan_barang_rinci_kabupaten CASCADE;
CREATE VIEW view_persediaan_barang_rinci_kabupaten AS

SELECT
*

FROM
view_persediaan_barang4_awayan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bappeda

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_batumandi

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bkd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bkppd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bpbd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bppd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dinkes

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_disdik

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dishub

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_disnakertrans

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dko

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dkp

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dkukmp

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dlh

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dpkp

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dpmd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dpmptsp

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dppkb

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dpppa

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dpupr

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dukcatpil

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_halong

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_inspektorat

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_juai

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_kearsipan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_kesbangpol

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_kominfo

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_lampihong

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_paringin

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_paringinselatan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_pariwisata

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_perdagangan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_perikanan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_perpustakaan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_pertanian

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_satpolpp

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_setda

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_setwan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_sosial

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_tebingtinggi

;
GRANT ALL PRIVILEGES ON view_persediaan_barang_rinci_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_rinci_kabupaten FROM lap_kabupaten;
DROP VIEW IF EXISTS view_persediaan_barang_rekap_kabupaten CASCADE;
CREATE VIEW view_persediaan_barang_rekap_kabupaten AS

SELECT
*

FROM
view_persediaan_barang5_awayan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bappeda

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_batumandi

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bkd

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bkppd

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bpbd

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bppd

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dinkes

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_disdik

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dishub

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_disnakertrans

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dko

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dkp

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dkukmp

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dlh

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dpkp

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dpmd

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dpmptsp

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dppkb

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dpppa

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dpupr

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dukcatpil

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_halong

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_inspektorat

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_juai

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_kearsipan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_kesbangpol

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_kominfo

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_lampihong

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_paringin

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_paringinselatan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_pariwisata

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_perdagangan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_perikanan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_perpustakaan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_pertanian

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_satpolpp

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_setda

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_setwan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_sosial

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_tebingtinggi

;
GRANT ALL PRIVILEGES ON view_persediaan_barang_rekap_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_rekap_kabupaten FROM lap_kabupaten;

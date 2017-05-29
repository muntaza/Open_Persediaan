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
DROP VIEW IF EXISTS view_persediaan_barang_batupiring CASCADE;

CREATE VIEW view_persediaan_barang_batupiring AS

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
id_skpd = 37


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
id_skpd = 37

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_batupiring FROM lap_batupiring;
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




GRANT ALL PRIVILEGES ON view_persediaan_barang_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang_blhk CASCADE;

CREATE VIEW view_persediaan_barang_blhk AS

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




GRANT ALL PRIVILEGES ON view_persediaan_barang_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_blhk FROM lap_blhk;
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
DROP VIEW IF EXISTS view_persediaan_barang_bpmpd CASCADE;

CREATE VIEW view_persediaan_barang_bpmpd AS

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




GRANT ALL PRIVILEGES ON view_persediaan_barang_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_persediaan_barang_bppakb CASCADE;

CREATE VIEW view_persediaan_barang_bppakb AS

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




GRANT ALL PRIVILEGES ON view_persediaan_barang_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_persediaan_barang_bppkp CASCADE;

CREATE VIEW view_persediaan_barang_bppkp AS

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




GRANT ALL PRIVILEGES ON view_persediaan_barang_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_bppkp FROM lap_bppkp;
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
DROP VIEW IF EXISTS view_persediaan_barang_disporaparbud CASCADE;

CREATE VIEW view_persediaan_barang_disporaparbud AS

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




GRANT ALL PRIVILEGES ON view_persediaan_barang_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_persediaan_barang_dispu CASCADE;

CREATE VIEW view_persediaan_barang_dispu AS

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




GRANT ALL PRIVILEGES ON view_persediaan_barang_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_persediaan_barang_distamben CASCADE;

CREATE VIEW view_persediaan_barang_distamben AS

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
id_skpd = 17


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
id_skpd = 17

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_persediaan_barang_dppkad CASCADE;

CREATE VIEW view_persediaan_barang_dppkad AS

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




GRANT ALL PRIVILEGES ON view_persediaan_barang_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_dppkad FROM lap_dppkad;
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
DROP VIEW IF EXISTS view_persediaan_barang_kehutanan CASCADE;

CREATE VIEW view_persediaan_barang_kehutanan AS

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
id_skpd = 14


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
id_skpd = 14

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_kehutanan FROM lap_kehutanan;
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
DROP VIEW IF EXISTS view_persediaan_barang_korpri CASCADE;

CREATE VIEW view_persediaan_barang_korpri AS

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
id_skpd = 27


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
id_skpd = 27

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_persediaan_barang_kp2tpm CASCADE;

CREATE VIEW view_persediaan_barang_kp2tpm AS

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




GRANT ALL PRIVILEGES ON view_persediaan_barang_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_persediaan_barang_kpdad CASCADE;

CREATE VIEW view_persediaan_barang_kpdad AS

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




GRANT ALL PRIVILEGES ON view_persediaan_barang_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_kpdad FROM lap_kpdad;
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
DROP VIEW IF EXISTS view_persediaan_barang_paringinkota CASCADE;

CREATE VIEW view_persediaan_barang_paringinkota AS

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
id_skpd = 29


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
id_skpd = 29

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_paringinkota FROM lap_paringinkota;
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
DROP VIEW IF EXISTS view_persediaan_barang_paringintimur CASCADE;

CREATE VIEW view_persediaan_barang_paringintimur AS

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
id_skpd = 30


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
id_skpd = 30

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_persediaan_barang_perindagkop CASCADE;

CREATE VIEW view_persediaan_barang_perindagkop AS

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




GRANT ALL PRIVILEGES ON view_persediaan_barang_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_perindagkop FROM lap_perindagkop;
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
DROP VIEW IF EXISTS view_persediaan_barang_rsud CASCADE;

CREATE VIEW view_persediaan_barang_rsud AS

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
id_skpd = 6


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
id_skpd = 6

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_rsud FROM lap_rsud;
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
DROP VIEW IF EXISTS view_persediaan_barang_snt CASCADE;

CREATE VIEW view_persediaan_barang_snt AS

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




GRANT ALL PRIVILEGES ON view_persediaan_barang_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_snt FROM lap_snt;
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
DROP VIEW IF EXISTS view_persediaan_barang2_batupiring;

CREATE VIEW view_persediaan_barang2_batupiring AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_batupiring

WHERE
1 = 1  AND
id_skpd = 37;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_batupiring FROM lap_batupiring;
DROP VIEW IF EXISTS view_persediaan_barang2_bkd;

CREATE VIEW view_persediaan_barang2_bkd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bkd

WHERE
1 = 1  AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang2_blhk;

CREATE VIEW view_persediaan_barang2_blhk AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_blhk

WHERE
1 = 1  AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_blhk FROM lap_blhk;
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
DROP VIEW IF EXISTS view_persediaan_barang2_bpmpd;

CREATE VIEW view_persediaan_barang2_bpmpd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bpmpd

WHERE
1 = 1  AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_persediaan_barang2_bppakb;

CREATE VIEW view_persediaan_barang2_bppakb AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bppakb

WHERE
1 = 1  AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_persediaan_barang2_bppkp;

CREATE VIEW view_persediaan_barang2_bppkp AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bppkp

WHERE
1 = 1  AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bppkp FROM lap_bppkp;
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
DROP VIEW IF EXISTS view_persediaan_barang2_disporaparbud;

CREATE VIEW view_persediaan_barang2_disporaparbud AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_disporaparbud

WHERE
1 = 1  AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_persediaan_barang2_dispu;

CREATE VIEW view_persediaan_barang2_dispu AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dispu

WHERE
1 = 1  AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_persediaan_barang2_distamben;

CREATE VIEW view_persediaan_barang2_distamben AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_distamben

WHERE
1 = 1  AND
id_skpd = 17;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_persediaan_barang2_dppkad;

CREATE VIEW view_persediaan_barang2_dppkad AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dppkad

WHERE
1 = 1  AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dppkad FROM lap_dppkad;
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
DROP VIEW IF EXISTS view_persediaan_barang2_kehutanan;

CREATE VIEW view_persediaan_barang2_kehutanan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_kehutanan

WHERE
1 = 1  AND
id_skpd = 14;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_kehutanan FROM lap_kehutanan;
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
DROP VIEW IF EXISTS view_persediaan_barang2_korpri;

CREATE VIEW view_persediaan_barang2_korpri AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_korpri

WHERE
1 = 1  AND
id_skpd = 27;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_persediaan_barang2_kp2tpm;

CREATE VIEW view_persediaan_barang2_kp2tpm AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_kp2tpm

WHERE
1 = 1  AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_persediaan_barang2_kpdad;

CREATE VIEW view_persediaan_barang2_kpdad AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_kpdad

WHERE
1 = 1  AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_kpdad FROM lap_kpdad;
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
DROP VIEW IF EXISTS view_persediaan_barang2_paringinkota;

CREATE VIEW view_persediaan_barang2_paringinkota AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_paringinkota

WHERE
1 = 1  AND
id_skpd = 29;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_paringinkota FROM lap_paringinkota;
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
DROP VIEW IF EXISTS view_persediaan_barang2_paringintimur;

CREATE VIEW view_persediaan_barang2_paringintimur AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_paringintimur

WHERE
1 = 1  AND
id_skpd = 30;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_persediaan_barang2_perindagkop;

CREATE VIEW view_persediaan_barang2_perindagkop AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_perindagkop

WHERE
1 = 1  AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_perindagkop FROM lap_perindagkop;
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
DROP VIEW IF EXISTS view_persediaan_barang2_rsud;

CREATE VIEW view_persediaan_barang2_rsud AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_rsud

WHERE
1 = 1  AND
id_skpd = 6;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_rsud FROM lap_rsud;
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
DROP VIEW IF EXISTS view_persediaan_barang2_snt;

CREATE VIEW view_persediaan_barang2_snt AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_snt

WHERE
1 = 1  AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_snt FROM lap_snt;
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
DROP VIEW IF EXISTS view_persediaan_barang3_batupiring;

CREATE VIEW view_persediaan_barang3_batupiring AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_batupiring

WHERE
1 = 1  AND
id_skpd = 37;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_batupiring FROM lap_batupiring;
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
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang3_blhk;

CREATE VIEW view_persediaan_barang3_blhk AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_blhk

WHERE
1 = 1  AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_blhk FROM lap_blhk;
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
DROP VIEW IF EXISTS view_persediaan_barang3_bpmpd;

CREATE VIEW view_persediaan_barang3_bpmpd AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_bpmpd

WHERE
1 = 1  AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_persediaan_barang3_bppakb;

CREATE VIEW view_persediaan_barang3_bppakb AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_bppakb

WHERE
1 = 1  AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_persediaan_barang3_bppkp;

CREATE VIEW view_persediaan_barang3_bppkp AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_bppkp

WHERE
1 = 1  AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bppkp FROM lap_bppkp;
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
DROP VIEW IF EXISTS view_persediaan_barang3_disporaparbud;

CREATE VIEW view_persediaan_barang3_disporaparbud AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_disporaparbud

WHERE
1 = 1  AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_persediaan_barang3_dispu;

CREATE VIEW view_persediaan_barang3_dispu AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dispu

WHERE
1 = 1  AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_persediaan_barang3_distamben;

CREATE VIEW view_persediaan_barang3_distamben AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_distamben

WHERE
1 = 1  AND
id_skpd = 17;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_persediaan_barang3_dppkad;

CREATE VIEW view_persediaan_barang3_dppkad AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dppkad

WHERE
1 = 1  AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dppkad FROM lap_dppkad;
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
DROP VIEW IF EXISTS view_persediaan_barang3_kehutanan;

CREATE VIEW view_persediaan_barang3_kehutanan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_kehutanan

WHERE
1 = 1  AND
id_skpd = 14;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_kehutanan FROM lap_kehutanan;
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
DROP VIEW IF EXISTS view_persediaan_barang3_korpri;

CREATE VIEW view_persediaan_barang3_korpri AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_korpri

WHERE
1 = 1  AND
id_skpd = 27;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_persediaan_barang3_kp2tpm;

CREATE VIEW view_persediaan_barang3_kp2tpm AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_kp2tpm

WHERE
1 = 1  AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_persediaan_barang3_kpdad;

CREATE VIEW view_persediaan_barang3_kpdad AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_kpdad

WHERE
1 = 1  AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_kpdad FROM lap_kpdad;
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
DROP VIEW IF EXISTS view_persediaan_barang3_paringinkota;

CREATE VIEW view_persediaan_barang3_paringinkota AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_paringinkota

WHERE
1 = 1  AND
id_skpd = 29;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_paringinkota FROM lap_paringinkota;
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
DROP VIEW IF EXISTS view_persediaan_barang3_paringintimur;

CREATE VIEW view_persediaan_barang3_paringintimur AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_paringintimur

WHERE
1 = 1  AND
id_skpd = 30;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_persediaan_barang3_perindagkop;

CREATE VIEW view_persediaan_barang3_perindagkop AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_perindagkop

WHERE
1 = 1  AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_perindagkop FROM lap_perindagkop;
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
DROP VIEW IF EXISTS view_persediaan_barang3_rsud;

CREATE VIEW view_persediaan_barang3_rsud AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_rsud

WHERE
1 = 1  AND
id_skpd = 6;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_rsud FROM lap_rsud;
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
DROP VIEW IF EXISTS view_persediaan_barang3_snt;

CREATE VIEW view_persediaan_barang3_snt AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_snt

WHERE
1 = 1  AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_snt FROM lap_snt;
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
DROP VIEW IF EXISTS view_persediaan_barang4_batupiring;

CREATE VIEW view_persediaan_barang4_batupiring AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_batupiring

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 37;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_batupiring FROM lap_batupiring;
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
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang4_blhk;

CREATE VIEW view_persediaan_barang4_blhk AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_blhk

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_blhk FROM lap_blhk;
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
DROP VIEW IF EXISTS view_persediaan_barang4_bpmpd;

CREATE VIEW view_persediaan_barang4_bpmpd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_bpmpd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_persediaan_barang4_bppakb;

CREATE VIEW view_persediaan_barang4_bppakb AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_bppakb

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_persediaan_barang4_bppkp;

CREATE VIEW view_persediaan_barang4_bppkp AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_bppkp

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bppkp FROM lap_bppkp;
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
DROP VIEW IF EXISTS view_persediaan_barang4_disporaparbud;

CREATE VIEW view_persediaan_barang4_disporaparbud AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_disporaparbud

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_persediaan_barang4_dispu;

CREATE VIEW view_persediaan_barang4_dispu AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dispu

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_persediaan_barang4_distamben;

CREATE VIEW view_persediaan_barang4_distamben AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_distamben

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 17;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_persediaan_barang4_dppkad;

CREATE VIEW view_persediaan_barang4_dppkad AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dppkad

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dppkad FROM lap_dppkad;
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
DROP VIEW IF EXISTS view_persediaan_barang4_kehutanan;

CREATE VIEW view_persediaan_barang4_kehutanan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_kehutanan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 14;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_kehutanan FROM lap_kehutanan;
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
DROP VIEW IF EXISTS view_persediaan_barang4_korpri;

CREATE VIEW view_persediaan_barang4_korpri AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_korpri

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 27;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_persediaan_barang4_kp2tpm;

CREATE VIEW view_persediaan_barang4_kp2tpm AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_kp2tpm

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_persediaan_barang4_kpdad;

CREATE VIEW view_persediaan_barang4_kpdad AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_kpdad

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_kpdad FROM lap_kpdad;
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
DROP VIEW IF EXISTS view_persediaan_barang4_paringinkota;

CREATE VIEW view_persediaan_barang4_paringinkota AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_paringinkota

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 29;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_paringinkota FROM lap_paringinkota;
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
DROP VIEW IF EXISTS view_persediaan_barang4_paringintimur;

CREATE VIEW view_persediaan_barang4_paringintimur AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_paringintimur

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 30;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_persediaan_barang4_perindagkop;

CREATE VIEW view_persediaan_barang4_perindagkop AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_perindagkop

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_perindagkop FROM lap_perindagkop;
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
DROP VIEW IF EXISTS view_persediaan_barang4_rsud;

CREATE VIEW view_persediaan_barang4_rsud AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_rsud

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 6;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_rsud FROM lap_rsud;
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
DROP VIEW IF EXISTS view_persediaan_barang4_snt;

CREATE VIEW view_persediaan_barang4_snt AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_snt

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_snt FROM lap_snt;
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
DROP VIEW IF EXISTS view_persediaan_barang5_batupiring CASCADE;

CREATE VIEW view_persediaan_barang5_batupiring AS

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
view_persediaan_barang4_batupiring

WHERE
1 = 1  AND
id_skpd = 37

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_batupiring FROM lap_batupiring;
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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang5_blhk CASCADE;

CREATE VIEW view_persediaan_barang5_blhk AS

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
view_persediaan_barang4_blhk

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_blhk FROM lap_blhk;
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
DROP VIEW IF EXISTS view_persediaan_barang5_bpmpd CASCADE;

CREATE VIEW view_persediaan_barang5_bpmpd AS

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
view_persediaan_barang4_bpmpd

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_persediaan_barang5_bppakb CASCADE;

CREATE VIEW view_persediaan_barang5_bppakb AS

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
view_persediaan_barang4_bppakb

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_persediaan_barang5_bppkp CASCADE;

CREATE VIEW view_persediaan_barang5_bppkp AS

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
view_persediaan_barang4_bppkp

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_bppkp FROM lap_bppkp;
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
DROP VIEW IF EXISTS view_persediaan_barang5_disporaparbud CASCADE;

CREATE VIEW view_persediaan_barang5_disporaparbud AS

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
view_persediaan_barang4_disporaparbud

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_persediaan_barang5_dispu CASCADE;

CREATE VIEW view_persediaan_barang5_dispu AS

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
view_persediaan_barang4_dispu

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_persediaan_barang5_distamben CASCADE;

CREATE VIEW view_persediaan_barang5_distamben AS

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
view_persediaan_barang4_distamben

WHERE
1 = 1  AND
id_skpd = 17

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_persediaan_barang5_dppkad CASCADE;

CREATE VIEW view_persediaan_barang5_dppkad AS

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
view_persediaan_barang4_dppkad

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_dppkad FROM lap_dppkad;
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
DROP VIEW IF EXISTS view_persediaan_barang5_kehutanan CASCADE;

CREATE VIEW view_persediaan_barang5_kehutanan AS

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
view_persediaan_barang4_kehutanan

WHERE
1 = 1  AND
id_skpd = 14

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_kehutanan FROM lap_kehutanan;
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
DROP VIEW IF EXISTS view_persediaan_barang5_korpri CASCADE;

CREATE VIEW view_persediaan_barang5_korpri AS

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
view_persediaan_barang4_korpri

WHERE
1 = 1  AND
id_skpd = 27

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_persediaan_barang5_kp2tpm CASCADE;

CREATE VIEW view_persediaan_barang5_kp2tpm AS

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
view_persediaan_barang4_kp2tpm

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_persediaan_barang5_kpdad CASCADE;

CREATE VIEW view_persediaan_barang5_kpdad AS

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
view_persediaan_barang4_kpdad

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_kpdad FROM lap_kpdad;
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
DROP VIEW IF EXISTS view_persediaan_barang5_paringinkota CASCADE;

CREATE VIEW view_persediaan_barang5_paringinkota AS

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
view_persediaan_barang4_paringinkota

WHERE
1 = 1  AND
id_skpd = 29

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_paringinkota FROM lap_paringinkota;
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
DROP VIEW IF EXISTS view_persediaan_barang5_paringintimur CASCADE;

CREATE VIEW view_persediaan_barang5_paringintimur AS

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
view_persediaan_barang4_paringintimur

WHERE
1 = 1  AND
id_skpd = 30

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_persediaan_barang5_perindagkop CASCADE;

CREATE VIEW view_persediaan_barang5_perindagkop AS

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
view_persediaan_barang4_perindagkop

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_perindagkop FROM lap_perindagkop;
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
DROP VIEW IF EXISTS view_persediaan_barang5_rsud CASCADE;

CREATE VIEW view_persediaan_barang5_rsud AS

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
view_persediaan_barang4_rsud

WHERE
1 = 1  AND
id_skpd = 6

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_rsud FROM lap_rsud;
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
DROP VIEW IF EXISTS view_persediaan_barang5_snt CASCADE;

CREATE VIEW view_persediaan_barang5_snt AS

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
view_persediaan_barang4_snt

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


GRANT ALL PRIVILEGES ON view_persediaan_barang5_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang5_snt FROM lap_snt;
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
view_persediaan_barang4_batupiring

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bkd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_blhk

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bpbd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bpmpd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bppakb

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bppkp

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
view_persediaan_barang4_disporaparbud

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dispu

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_distamben

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dppkad

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
view_persediaan_barang4_kehutanan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_kesbangpol

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_korpri

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_kp2tpm

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_kpdad

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
view_persediaan_barang4_paringinkota

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_paringinselatan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_paringintimur

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_perindagkop

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_pertanian

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_rsud

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
view_persediaan_barang4_snt

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_tebingtinggi;

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
view_persediaan_barang5_batupiring

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bkd

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_blhk

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bpbd

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bpmpd

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bppakb

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bppkp

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
view_persediaan_barang5_disporaparbud

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dispu

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_distamben

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dppkad

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
view_persediaan_barang5_kehutanan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_kesbangpol

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_korpri

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_kp2tpm

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_kpdad

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
view_persediaan_barang5_paringinkota

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_paringinselatan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_paringintimur

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_perindagkop

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_pertanian

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_rsud

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
view_persediaan_barang5_snt

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_tebingtinggi;


GRANT ALL PRIVILEGES ON view_persediaan_barang_rekap_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_rekap_kabupaten FROM lap_kabupaten;

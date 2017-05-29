DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_masuk_kabupaten CASCADE;


CREATE VIEW view_persediaan_barang_sub_skpd_masuk_kabupaten AS

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
AND jenis_transaksi.id = 1;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_masuk_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_masuk_kabupaten FROM lap_kabupaten;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_keluar_kabupaten CASCADE;


CREATE VIEW view_persediaan_barang_sub_skpd_keluar_kabupaten AS

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
AND jenis_transaksi.id = 2;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_keluar_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_keluar_kabupaten FROM lap_kabupaten;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_awayan CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_awayan AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 34

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_bappeda CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_bappeda AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 21

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_batumandi CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_batumandi AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 32

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_batupiring CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_batupiring AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 37

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_batupiring FROM lap_batupiring;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_bkd CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_bkd AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 26

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_blhk CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_blhk AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 22

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_blhk FROM lap_blhk;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_bpbd CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_bpbd AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 39

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_bpmpd CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_bpmpd AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 10

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_bppakb CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_bppakb AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 11

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_bppkp CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_bppkp AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 15

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_bppkp FROM lap_bppkp;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_dinkes CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_dinkes AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 5

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_disdik CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_disdik AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 7

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_dishub CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_dishub AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 4

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_disporaparbud CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_disporaparbud AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 23

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_dispu CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_dispu AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 3

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_distamben CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_distamben AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 17

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_dppkad CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_dppkad AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 19

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_dppkad FROM lap_dppkad;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_dukcatpil CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_dukcatpil AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 12

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_halong CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_halong AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 35

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_halong FROM lap_halong;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_inspektorat CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_inspektorat AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 20

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_juai CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_juai AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 33

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_juai FROM lap_juai;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_kehutanan CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_kehutanan AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 14

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_kehutanan FROM lap_kehutanan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_kesbangpol CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_kesbangpol AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 24

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_korpri CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_korpri AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 27

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_kp2tpm CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_kp2tpm AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 18

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_kpdad CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_kpdad AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 8

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_kpdad FROM lap_kpdad;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_lampihong CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_lampihong AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 31

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_paringin CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_paringin AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 28

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_paringinkota CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_paringinkota AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 29

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_paringinkota FROM lap_paringinkota;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_paringinselatan CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_paringinselatan AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 36

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_paringintimur CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_paringintimur AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 30

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_perindagkop CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_perindagkop AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 16

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_perindagkop FROM lap_perindagkop;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_pertanian CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_pertanian AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 13

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_rsud CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_rsud AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 6

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_rsud FROM lap_rsud;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_satpolpp CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_satpolpp AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 25

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_setda CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_setda AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 2

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_setda FROM lap_setda;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_setwan CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_setwan AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 1

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_snt CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_snt AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 9

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_snt FROM lap_snt;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd_tebingtinggi CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd_tebingtinggi AS

SELECT
row_number() OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY tanggal, id_persediaan) as serial,
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

jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang


FROM
view_persediaan_barang_sub_skpd_masuk_kabupaten

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

0 - jumlah as jumlah,
harga,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang



FROM
view_persediaan_barang_sub_skpd_keluar_kabupaten

WHERE
1 = 1  AND
id_skpd = 38

ORDER BY kode_barang, serial, tanggal;




GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd_tebingtinggi FROM lap_tebingtinggi;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_awayan;

CREATE VIEW view_persediaan_barang_sub_skpd2_awayan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_awayan

WHERE
1 = 1  AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_bappeda;

CREATE VIEW view_persediaan_barang_sub_skpd2_bappeda AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_bappeda

WHERE
1 = 1  AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_batumandi;

CREATE VIEW view_persediaan_barang_sub_skpd2_batumandi AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_batumandi

WHERE
1 = 1  AND
id_skpd = 32;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_batupiring;

CREATE VIEW view_persediaan_barang_sub_skpd2_batupiring AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_batupiring

WHERE
1 = 1  AND
id_skpd = 37;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_batupiring FROM lap_batupiring;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_bkd;

CREATE VIEW view_persediaan_barang_sub_skpd2_bkd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_bkd

WHERE
1 = 1  AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_blhk;

CREATE VIEW view_persediaan_barang_sub_skpd2_blhk AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_blhk

WHERE
1 = 1  AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_blhk FROM lap_blhk;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_bpbd;

CREATE VIEW view_persediaan_barang_sub_skpd2_bpbd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_bpbd

WHERE
1 = 1  AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_bpmpd;

CREATE VIEW view_persediaan_barang_sub_skpd2_bpmpd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_bpmpd

WHERE
1 = 1  AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_bppakb;

CREATE VIEW view_persediaan_barang_sub_skpd2_bppakb AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_bppakb

WHERE
1 = 1  AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_bppkp;

CREATE VIEW view_persediaan_barang_sub_skpd2_bppkp AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_bppkp

WHERE
1 = 1  AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_bppkp FROM lap_bppkp;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_dinkes;

CREATE VIEW view_persediaan_barang_sub_skpd2_dinkes AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_dinkes

WHERE
1 = 1  AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_disdik;

CREATE VIEW view_persediaan_barang_sub_skpd2_disdik AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_disdik

WHERE
1 = 1  AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_dishub;

CREATE VIEW view_persediaan_barang_sub_skpd2_dishub AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_dishub

WHERE
1 = 1  AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_disporaparbud;

CREATE VIEW view_persediaan_barang_sub_skpd2_disporaparbud AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_disporaparbud

WHERE
1 = 1  AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_dispu;

CREATE VIEW view_persediaan_barang_sub_skpd2_dispu AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_dispu

WHERE
1 = 1  AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_distamben;

CREATE VIEW view_persediaan_barang_sub_skpd2_distamben AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_distamben

WHERE
1 = 1  AND
id_skpd = 17;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_dppkad;

CREATE VIEW view_persediaan_barang_sub_skpd2_dppkad AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_dppkad

WHERE
1 = 1  AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_dppkad FROM lap_dppkad;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_dukcatpil;

CREATE VIEW view_persediaan_barang_sub_skpd2_dukcatpil AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_dukcatpil

WHERE
1 = 1  AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_halong;

CREATE VIEW view_persediaan_barang_sub_skpd2_halong AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_halong

WHERE
1 = 1  AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_halong FROM lap_halong;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_inspektorat;

CREATE VIEW view_persediaan_barang_sub_skpd2_inspektorat AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_inspektorat

WHERE
1 = 1  AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_juai;

CREATE VIEW view_persediaan_barang_sub_skpd2_juai AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_juai

WHERE
1 = 1  AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_juai FROM lap_juai;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_kehutanan;

CREATE VIEW view_persediaan_barang_sub_skpd2_kehutanan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_kehutanan

WHERE
1 = 1  AND
id_skpd = 14;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_kehutanan FROM lap_kehutanan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_kesbangpol;

CREATE VIEW view_persediaan_barang_sub_skpd2_kesbangpol AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_kesbangpol

WHERE
1 = 1  AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_korpri;

CREATE VIEW view_persediaan_barang_sub_skpd2_korpri AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_korpri

WHERE
1 = 1  AND
id_skpd = 27;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_kp2tpm;

CREATE VIEW view_persediaan_barang_sub_skpd2_kp2tpm AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_kp2tpm

WHERE
1 = 1  AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_kpdad;

CREATE VIEW view_persediaan_barang_sub_skpd2_kpdad AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_kpdad

WHERE
1 = 1  AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_kpdad FROM lap_kpdad;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_lampihong;

CREATE VIEW view_persediaan_barang_sub_skpd2_lampihong AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_lampihong

WHERE
1 = 1  AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_paringin;

CREATE VIEW view_persediaan_barang_sub_skpd2_paringin AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_paringin

WHERE
1 = 1  AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_paringinkota;

CREATE VIEW view_persediaan_barang_sub_skpd2_paringinkota AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_paringinkota

WHERE
1 = 1  AND
id_skpd = 29;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_paringinkota FROM lap_paringinkota;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_paringinselatan;

CREATE VIEW view_persediaan_barang_sub_skpd2_paringinselatan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_paringinselatan

WHERE
1 = 1  AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_paringintimur;

CREATE VIEW view_persediaan_barang_sub_skpd2_paringintimur AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_paringintimur

WHERE
1 = 1  AND
id_skpd = 30;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_perindagkop;

CREATE VIEW view_persediaan_barang_sub_skpd2_perindagkop AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_perindagkop

WHERE
1 = 1  AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_perindagkop FROM lap_perindagkop;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_pertanian;

CREATE VIEW view_persediaan_barang_sub_skpd2_pertanian AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_pertanian

WHERE
1 = 1  AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_rsud;

CREATE VIEW view_persediaan_barang_sub_skpd2_rsud AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_rsud

WHERE
1 = 1  AND
id_skpd = 6;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_rsud FROM lap_rsud;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_satpolpp;

CREATE VIEW view_persediaan_barang_sub_skpd2_satpolpp AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_satpolpp

WHERE
1 = 1  AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_setda;

CREATE VIEW view_persediaan_barang_sub_skpd2_setda AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_setda

WHERE
1 = 1  AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_setda FROM lap_setda;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_setwan;

CREATE VIEW view_persediaan_barang_sub_skpd2_setwan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_setwan

WHERE
1 = 1  AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_snt;

CREATE VIEW view_persediaan_barang_sub_skpd2_snt AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_snt

WHERE
1 = 1  AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_snt FROM lap_snt;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd2_tebingtinggi;

CREATE VIEW view_persediaan_barang_sub_skpd2_tebingtinggi AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY id_sub_skpd, kode_barang ORDER BY serial, tanggal) as pra_saldo


FROM
view_persediaan_barang_sub_skpd_tebingtinggi

WHERE
1 = 1  AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd2_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd2_tebingtinggi FROM lap_tebingtinggi;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_awayan;

CREATE VIEW view_persediaan_barang_sub_skpd3_awayan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_awayan

WHERE
1 = 1  AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_bappeda;

CREATE VIEW view_persediaan_barang_sub_skpd3_bappeda AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_bappeda

WHERE
1 = 1  AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_batumandi;

CREATE VIEW view_persediaan_barang_sub_skpd3_batumandi AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_batumandi

WHERE
1 = 1  AND
id_skpd = 32;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_batupiring;

CREATE VIEW view_persediaan_barang_sub_skpd3_batupiring AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_batupiring

WHERE
1 = 1  AND
id_skpd = 37;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_batupiring FROM lap_batupiring;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_bkd;

CREATE VIEW view_persediaan_barang_sub_skpd3_bkd AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_bkd

WHERE
1 = 1  AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_blhk;

CREATE VIEW view_persediaan_barang_sub_skpd3_blhk AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_blhk

WHERE
1 = 1  AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_blhk FROM lap_blhk;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_bpbd;

CREATE VIEW view_persediaan_barang_sub_skpd3_bpbd AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_bpbd

WHERE
1 = 1  AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_bpmpd;

CREATE VIEW view_persediaan_barang_sub_skpd3_bpmpd AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_bpmpd

WHERE
1 = 1  AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_bppakb;

CREATE VIEW view_persediaan_barang_sub_skpd3_bppakb AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_bppakb

WHERE
1 = 1  AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_bppkp;

CREATE VIEW view_persediaan_barang_sub_skpd3_bppkp AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_bppkp

WHERE
1 = 1  AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_bppkp FROM lap_bppkp;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_dinkes;

CREATE VIEW view_persediaan_barang_sub_skpd3_dinkes AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_dinkes

WHERE
1 = 1  AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_disdik;

CREATE VIEW view_persediaan_barang_sub_skpd3_disdik AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_disdik

WHERE
1 = 1  AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_dishub;

CREATE VIEW view_persediaan_barang_sub_skpd3_dishub AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_dishub

WHERE
1 = 1  AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_disporaparbud;

CREATE VIEW view_persediaan_barang_sub_skpd3_disporaparbud AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_disporaparbud

WHERE
1 = 1  AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_dispu;

CREATE VIEW view_persediaan_barang_sub_skpd3_dispu AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_dispu

WHERE
1 = 1  AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_distamben;

CREATE VIEW view_persediaan_barang_sub_skpd3_distamben AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_distamben

WHERE
1 = 1  AND
id_skpd = 17;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_dppkad;

CREATE VIEW view_persediaan_barang_sub_skpd3_dppkad AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_dppkad

WHERE
1 = 1  AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_dppkad FROM lap_dppkad;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_dukcatpil;

CREATE VIEW view_persediaan_barang_sub_skpd3_dukcatpil AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_dukcatpil

WHERE
1 = 1  AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_halong;

CREATE VIEW view_persediaan_barang_sub_skpd3_halong AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_halong

WHERE
1 = 1  AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_halong FROM lap_halong;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_inspektorat;

CREATE VIEW view_persediaan_barang_sub_skpd3_inspektorat AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_inspektorat

WHERE
1 = 1  AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_juai;

CREATE VIEW view_persediaan_barang_sub_skpd3_juai AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_juai

WHERE
1 = 1  AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_juai FROM lap_juai;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_kehutanan;

CREATE VIEW view_persediaan_barang_sub_skpd3_kehutanan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_kehutanan

WHERE
1 = 1  AND
id_skpd = 14;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_kehutanan FROM lap_kehutanan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_kesbangpol;

CREATE VIEW view_persediaan_barang_sub_skpd3_kesbangpol AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_kesbangpol

WHERE
1 = 1  AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_korpri;

CREATE VIEW view_persediaan_barang_sub_skpd3_korpri AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_korpri

WHERE
1 = 1  AND
id_skpd = 27;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_kp2tpm;

CREATE VIEW view_persediaan_barang_sub_skpd3_kp2tpm AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_kp2tpm

WHERE
1 = 1  AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_kpdad;

CREATE VIEW view_persediaan_barang_sub_skpd3_kpdad AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_kpdad

WHERE
1 = 1  AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_kpdad FROM lap_kpdad;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_lampihong;

CREATE VIEW view_persediaan_barang_sub_skpd3_lampihong AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_lampihong

WHERE
1 = 1  AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_paringin;

CREATE VIEW view_persediaan_barang_sub_skpd3_paringin AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_paringin

WHERE
1 = 1  AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_paringinkota;

CREATE VIEW view_persediaan_barang_sub_skpd3_paringinkota AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_paringinkota

WHERE
1 = 1  AND
id_skpd = 29;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_paringinkota FROM lap_paringinkota;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_paringinselatan;

CREATE VIEW view_persediaan_barang_sub_skpd3_paringinselatan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_paringinselatan

WHERE
1 = 1  AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_paringintimur;

CREATE VIEW view_persediaan_barang_sub_skpd3_paringintimur AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_paringintimur

WHERE
1 = 1  AND
id_skpd = 30;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_perindagkop;

CREATE VIEW view_persediaan_barang_sub_skpd3_perindagkop AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_perindagkop

WHERE
1 = 1  AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_perindagkop FROM lap_perindagkop;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_pertanian;

CREATE VIEW view_persediaan_barang_sub_skpd3_pertanian AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_pertanian

WHERE
1 = 1  AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_rsud;

CREATE VIEW view_persediaan_barang_sub_skpd3_rsud AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_rsud

WHERE
1 = 1  AND
id_skpd = 6;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_rsud FROM lap_rsud;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_satpolpp;

CREATE VIEW view_persediaan_barang_sub_skpd3_satpolpp AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_satpolpp

WHERE
1 = 1  AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_setda;

CREATE VIEW view_persediaan_barang_sub_skpd3_setda AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_setda

WHERE
1 = 1  AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_setda FROM lap_setda;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_setwan;

CREATE VIEW view_persediaan_barang_sub_skpd3_setwan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_setwan

WHERE
1 = 1  AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_snt;

CREATE VIEW view_persediaan_barang_sub_skpd3_snt AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_snt

WHERE
1 = 1  AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_snt FROM lap_snt;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd3_tebingtinggi;

CREATE VIEW view_persediaan_barang_sub_skpd3_tebingtinggi AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang_sub_skpd2_tebingtinggi

WHERE
1 = 1  AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd3_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd3_tebingtinggi FROM lap_tebingtinggi;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_awayan;

CREATE VIEW view_persediaan_barang_sub_skpd4_awayan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_awayan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_bappeda;

CREATE VIEW view_persediaan_barang_sub_skpd4_bappeda AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_bappeda

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_batumandi;

CREATE VIEW view_persediaan_barang_sub_skpd4_batumandi AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_batumandi

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 32;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_batupiring;

CREATE VIEW view_persediaan_barang_sub_skpd4_batupiring AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_batupiring

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 37;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_batupiring FROM lap_batupiring;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_bkd;

CREATE VIEW view_persediaan_barang_sub_skpd4_bkd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_bkd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_blhk;

CREATE VIEW view_persediaan_barang_sub_skpd4_blhk AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_blhk

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_blhk FROM lap_blhk;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_bpbd;

CREATE VIEW view_persediaan_barang_sub_skpd4_bpbd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_bpbd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_bpmpd;

CREATE VIEW view_persediaan_barang_sub_skpd4_bpmpd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_bpmpd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_bppakb;

CREATE VIEW view_persediaan_barang_sub_skpd4_bppakb AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_bppakb

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_bppkp;

CREATE VIEW view_persediaan_barang_sub_skpd4_bppkp AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_bppkp

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_bppkp FROM lap_bppkp;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_dinkes;

CREATE VIEW view_persediaan_barang_sub_skpd4_dinkes AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_dinkes

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_disdik;

CREATE VIEW view_persediaan_barang_sub_skpd4_disdik AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_disdik

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_dishub;

CREATE VIEW view_persediaan_barang_sub_skpd4_dishub AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_dishub

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_disporaparbud;

CREATE VIEW view_persediaan_barang_sub_skpd4_disporaparbud AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_disporaparbud

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_dispu;

CREATE VIEW view_persediaan_barang_sub_skpd4_dispu AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_dispu

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_distamben;

CREATE VIEW view_persediaan_barang_sub_skpd4_distamben AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_distamben

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 17;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_dppkad;

CREATE VIEW view_persediaan_barang_sub_skpd4_dppkad AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_dppkad

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_dppkad FROM lap_dppkad;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_dukcatpil;

CREATE VIEW view_persediaan_barang_sub_skpd4_dukcatpil AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_dukcatpil

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_halong;

CREATE VIEW view_persediaan_barang_sub_skpd4_halong AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_halong

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_halong FROM lap_halong;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_inspektorat;

CREATE VIEW view_persediaan_barang_sub_skpd4_inspektorat AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_inspektorat

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_juai;

CREATE VIEW view_persediaan_barang_sub_skpd4_juai AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_juai

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_juai FROM lap_juai;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_kehutanan;

CREATE VIEW view_persediaan_barang_sub_skpd4_kehutanan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_kehutanan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 14;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_kehutanan FROM lap_kehutanan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_kesbangpol;

CREATE VIEW view_persediaan_barang_sub_skpd4_kesbangpol AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_kesbangpol

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_korpri;

CREATE VIEW view_persediaan_barang_sub_skpd4_korpri AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_korpri

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 27;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_kp2tpm;

CREATE VIEW view_persediaan_barang_sub_skpd4_kp2tpm AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_kp2tpm

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_kpdad;

CREATE VIEW view_persediaan_barang_sub_skpd4_kpdad AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_kpdad

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_kpdad FROM lap_kpdad;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_lampihong;

CREATE VIEW view_persediaan_barang_sub_skpd4_lampihong AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_lampihong

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_paringin;

CREATE VIEW view_persediaan_barang_sub_skpd4_paringin AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_paringin

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_paringinkota;

CREATE VIEW view_persediaan_barang_sub_skpd4_paringinkota AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_paringinkota

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 29;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_paringinkota FROM lap_paringinkota;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_paringinselatan;

CREATE VIEW view_persediaan_barang_sub_skpd4_paringinselatan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_paringinselatan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_paringintimur;

CREATE VIEW view_persediaan_barang_sub_skpd4_paringintimur AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_paringintimur

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 30;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_perindagkop;

CREATE VIEW view_persediaan_barang_sub_skpd4_perindagkop AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_perindagkop

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_perindagkop FROM lap_perindagkop;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_pertanian;

CREATE VIEW view_persediaan_barang_sub_skpd4_pertanian AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_pertanian

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_rsud;

CREATE VIEW view_persediaan_barang_sub_skpd4_rsud AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_rsud

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 6;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_rsud FROM lap_rsud;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_satpolpp;

CREATE VIEW view_persediaan_barang_sub_skpd4_satpolpp AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_satpolpp

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_setda;

CREATE VIEW view_persediaan_barang_sub_skpd4_setda AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_setda

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_setda FROM lap_setda;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_setwan;

CREATE VIEW view_persediaan_barang_sub_skpd4_setwan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_setwan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_snt;

CREATE VIEW view_persediaan_barang_sub_skpd4_snt AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_snt

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_snt FROM lap_snt;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_tebingtinggi;

CREATE VIEW view_persediaan_barang_sub_skpd4_tebingtinggi AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_tebingtinggi

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_tebingtinggi FROM lap_tebingtinggi;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_awayan CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_awayan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_awayan

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_bappeda CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_bappeda AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_bappeda

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_batumandi CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_batumandi AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_batumandi

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_batupiring CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_batupiring AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_batupiring

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_batupiring FROM lap_batupiring;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_bkd CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_bkd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_bkd

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_blhk CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_blhk AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_blhk

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_blhk FROM lap_blhk;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_bpbd CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_bpbd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_bpbd

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_bpmpd CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_bpmpd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_bpmpd

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_bppakb CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_bppakb AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_bppakb

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_bppkp CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_bppkp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_bppkp

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_bppkp FROM lap_bppkp;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_dinkes CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_dinkes AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_dinkes

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_disdik CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_disdik AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_disdik

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_dishub CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_dishub AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_dishub

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_disporaparbud CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_disporaparbud AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_disporaparbud

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_dispu CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_dispu AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_dispu

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_distamben CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_distamben AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_distamben

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_dppkad CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_dppkad AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_dppkad

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_dppkad FROM lap_dppkad;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_dukcatpil CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_dukcatpil AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_dukcatpil

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_halong CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_halong AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_halong

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_halong FROM lap_halong;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_inspektorat CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_inspektorat AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_inspektorat

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_juai CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_juai AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_juai

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_juai FROM lap_juai;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_kehutanan CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_kehutanan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_kehutanan

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_kehutanan FROM lap_kehutanan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_kesbangpol CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_kesbangpol AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_kesbangpol

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_korpri CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_korpri AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_korpri

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_kp2tpm CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_kp2tpm AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_kp2tpm

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_kpdad CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_kpdad AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_kpdad

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_kpdad FROM lap_kpdad;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_lampihong CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_lampihong AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_lampihong

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_paringin CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_paringin AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_paringin

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_paringinkota CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_paringinkota AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_paringinkota

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_paringinkota FROM lap_paringinkota;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_paringinselatan CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_paringinselatan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_paringinselatan

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_paringintimur CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_paringintimur AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_paringintimur

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_perindagkop CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_perindagkop AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_perindagkop

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_perindagkop FROM lap_perindagkop;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_pertanian CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_pertanian AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_pertanian

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_rsud CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_rsud AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_rsud

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_rsud FROM lap_rsud;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_satpolpp CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_satpolpp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_satpolpp

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_setda CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_setda AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_setda

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_setda FROM lap_setda;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_setwan CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_setwan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_setwan

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_snt CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_snt AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_snt

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_snt FROM lap_snt;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd5_tebingtinggi CASCADE;

CREATE VIEW view_persediaan_barang_sub_skpd5_tebingtinggi AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,id_sub_skpd,nama_sub_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(saldo) AS total_saldo_barang,
sum(jumlah_harga) AS total_harga

FROM
view_persediaan_barang_sub_skpd4_tebingtinggi

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
id_skpd,id_sub_skpd,nama_sub_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd5_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd5_tebingtinggi FROM lap_tebingtinggi;

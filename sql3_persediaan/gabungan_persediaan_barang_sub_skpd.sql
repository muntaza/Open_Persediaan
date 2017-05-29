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

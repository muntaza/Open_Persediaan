DROP VIEW IF EXISTS view_kartu_barang_setwan CASCADE;

CREATE VIEW view_kartu_barang_setwan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
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

jumlah as masuk,
NULL as keluar,
jumlah as pra_saldo,

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
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
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

NULL as masuk,
jumlah as keluar,
0-jumlah as pra_saldo,

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

ORDER BY kode_barang, tanggal;




GRANT ALL PRIVILEGES ON view_kartu_barang_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_setwan FROM lap_setwan;

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

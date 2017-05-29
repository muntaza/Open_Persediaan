DROP VIEW IF EXISTS view_beban_barang5_distamben CASCADE;

CREATE VIEW view_beban_barang5_distamben AS

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

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_distamben

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


GRANT ALL PRIVILEGES ON view_beban_barang5_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_distamben FROM lap_distamben;

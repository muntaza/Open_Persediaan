DROP VIEW IF EXISTS view_kartu_barang3_disporaparbud CASCADE;

CREATE VIEW view_kartu_barang3_disporaparbud AS

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

sum(pra_saldo) AS saldo_barang

FROM
view_kartu_barang2_disporaparbud

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


GRANT ALL PRIVILEGES ON view_kartu_barang3_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang3_disporaparbud FROM lap_disporaparbud;

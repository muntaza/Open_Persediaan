DROP VIEW IF EXISTS view_daftar_pengadaan_halong;

CREATE VIEW view_daftar_pengadaan_halong AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_halong FROM lap_halong;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_halong;

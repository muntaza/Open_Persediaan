DROP VIEW IF EXISTS view_daftar_pengadaan_kehutanan;

CREATE VIEW view_daftar_pengadaan_kehutanan AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_kehutanan FROM lap_kehutanan;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_kehutanan;

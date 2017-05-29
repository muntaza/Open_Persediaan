DROP VIEW IF EXISTS view_daftar_pengadaan_pertanian;

CREATE VIEW view_daftar_pengadaan_pertanian AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_pertanian FROM lap_pertanian;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_pertanian;

DROP VIEW IF EXISTS view_daftar_pengadaan_tebingtinggi;

CREATE VIEW view_daftar_pengadaan_tebingtinggi AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_tebingtinggi FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_tebingtinggi;

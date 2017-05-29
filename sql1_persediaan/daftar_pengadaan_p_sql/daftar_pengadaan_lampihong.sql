DROP VIEW IF EXISTS view_daftar_pengadaan_lampihong;

CREATE VIEW view_daftar_pengadaan_lampihong AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_lampihong FROM lap_lampihong;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_lampihong;

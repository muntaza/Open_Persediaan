DROP VIEW IF EXISTS view_daftar_pengadaan_setda;

CREATE VIEW view_daftar_pengadaan_setda AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_setda FROM lap_setda;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_setda;

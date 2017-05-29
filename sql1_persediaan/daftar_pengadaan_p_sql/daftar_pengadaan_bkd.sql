DROP VIEW IF EXISTS view_daftar_pengadaan_bkd;

CREATE VIEW view_daftar_pengadaan_bkd AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_bkd FROM lap_bkd;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_bkd;

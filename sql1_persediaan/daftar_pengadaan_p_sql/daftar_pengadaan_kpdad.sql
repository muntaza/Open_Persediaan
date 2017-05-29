DROP VIEW IF EXISTS view_daftar_pengadaan_kpdad;

CREATE VIEW view_daftar_pengadaan_kpdad AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_kpdad FROM lap_kpdad;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_kpdad;

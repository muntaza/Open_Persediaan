DROP VIEW IF EXISTS view_daftar_pengadaan_dppkad;

CREATE VIEW view_daftar_pengadaan_dppkad AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dppkad FROM lap_dppkad;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dppkad;

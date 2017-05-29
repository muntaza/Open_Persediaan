DROP VIEW IF EXISTS view_daftar_pengadaan_setwan;

CREATE VIEW view_daftar_pengadaan_setwan AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_setwan;

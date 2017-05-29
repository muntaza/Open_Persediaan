DROP VIEW IF EXISTS view_daftar_pengadaan_dispu;

CREATE VIEW view_daftar_pengadaan_dispu AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dispu FROM lap_dispu;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dispu;

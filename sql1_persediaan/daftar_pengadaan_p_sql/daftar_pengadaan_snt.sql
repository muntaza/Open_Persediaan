DROP VIEW IF EXISTS view_daftar_pengadaan_snt;

CREATE VIEW view_daftar_pengadaan_snt AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_snt FROM lap_snt;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_snt;

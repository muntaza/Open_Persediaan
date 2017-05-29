DROP VIEW IF EXISTS view_daftar_pengadaan_blhk;

CREATE VIEW view_daftar_pengadaan_blhk AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_blhk FROM lap_blhk;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_blhk;

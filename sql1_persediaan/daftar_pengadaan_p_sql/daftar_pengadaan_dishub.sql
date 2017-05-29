DROP VIEW IF EXISTS view_daftar_pengadaan_dishub;

CREATE VIEW view_daftar_pengadaan_dishub AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dishub FROM lap_dishub;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dishub;

DROP VIEW IF EXISTS view_daftar_pengadaan_rsud;

CREATE VIEW view_daftar_pengadaan_rsud AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_rsud FROM lap_rsud;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_rsud;

DROP VIEW IF EXISTS view_daftar_pengadaan_perindagkop;

CREATE VIEW view_daftar_pengadaan_perindagkop AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_perindagkop FROM lap_perindagkop;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_perindagkop;

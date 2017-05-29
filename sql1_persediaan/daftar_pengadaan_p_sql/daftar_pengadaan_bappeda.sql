DROP VIEW IF EXISTS view_daftar_pengadaan_bappeda;

CREATE VIEW view_daftar_pengadaan_bappeda AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_bappeda FROM lap_bappeda;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_bappeda;

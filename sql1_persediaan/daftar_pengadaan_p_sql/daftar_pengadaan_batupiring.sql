DROP VIEW IF EXISTS view_daftar_pengadaan_batupiring;

CREATE VIEW view_daftar_pengadaan_batupiring AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_batupiring FROM lap_batupiring;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_batupiring;

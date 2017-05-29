DROP VIEW IF EXISTS view_daftar_pengadaan_juai;

CREATE VIEW view_daftar_pengadaan_juai AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_juai FROM lap_juai;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_juai;

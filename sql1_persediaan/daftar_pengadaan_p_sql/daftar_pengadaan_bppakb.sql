DROP VIEW IF EXISTS view_daftar_pengadaan_bppakb;

CREATE VIEW view_daftar_pengadaan_bppakb AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_bppakb FROM lap_bppakb;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_bppakb;

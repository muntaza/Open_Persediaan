DROP VIEW IF EXISTS view_daftar_pengadaan_bppkp;

CREATE VIEW view_daftar_pengadaan_bppkp AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_bppkp FROM lap_bppkp;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_bppkp;

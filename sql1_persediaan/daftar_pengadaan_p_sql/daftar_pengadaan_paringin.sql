DROP VIEW IF EXISTS view_daftar_pengadaan_paringin;

CREATE VIEW view_daftar_pengadaan_paringin AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_paringin FROM lap_paringin;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_paringin;

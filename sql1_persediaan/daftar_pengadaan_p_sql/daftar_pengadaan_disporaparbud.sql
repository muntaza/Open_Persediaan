DROP VIEW IF EXISTS view_daftar_pengadaan_disporaparbud;

CREATE VIEW view_daftar_pengadaan_disporaparbud AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_disporaparbud FROM lap_disporaparbud;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_disporaparbud;

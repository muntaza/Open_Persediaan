DROP VIEW IF EXISTS view_daftar_pengadaan_paringintimur;

CREATE VIEW view_daftar_pengadaan_paringintimur AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_paringintimur FROM lap_paringintimur;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_paringintimur;

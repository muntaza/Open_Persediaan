DROP VIEW IF EXISTS view_daftar_pengadaan_distamben;

CREATE VIEW view_daftar_pengadaan_distamben AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 17;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_distamben FROM lap_distamben;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_distamben;

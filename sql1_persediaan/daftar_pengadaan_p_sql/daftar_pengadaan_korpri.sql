DROP VIEW IF EXISTS view_daftar_pengadaan_korpri;

CREATE VIEW view_daftar_pengadaan_korpri AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_korpri FROM lap_korpri;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_korpri;

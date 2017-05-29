DROP VIEW IF EXISTS view_daftar_pengadaan_bpmpd;

CREATE VIEW view_daftar_pengadaan_bpmpd AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_bpmpd FROM lap_bpmpd;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_bpmpd;

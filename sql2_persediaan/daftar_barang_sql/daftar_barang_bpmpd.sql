DROP VIEW IF EXISTS view_daftar_barang_bpmpd;

CREATE VIEW view_daftar_barang_bpmpd AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_bpmpd FROM lap_bpmpd;

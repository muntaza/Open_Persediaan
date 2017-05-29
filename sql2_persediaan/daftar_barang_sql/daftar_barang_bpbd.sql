DROP VIEW IF EXISTS view_daftar_barang_bpbd;

CREATE VIEW view_daftar_barang_bpbd AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_bpbd FROM lap_bpbd;

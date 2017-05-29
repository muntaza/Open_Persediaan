DROP VIEW IF EXISTS view_daftar_barang_snt;

CREATE VIEW view_daftar_barang_snt AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_snt FROM lap_snt;

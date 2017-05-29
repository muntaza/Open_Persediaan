DROP VIEW IF EXISTS view_daftar_barang_dispu;

CREATE VIEW view_daftar_barang_dispu AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dispu FROM lap_dispu;

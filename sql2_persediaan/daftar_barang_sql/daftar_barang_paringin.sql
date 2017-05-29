DROP VIEW IF EXISTS view_daftar_barang_paringin;

CREATE VIEW view_daftar_barang_paringin AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_paringin FROM lap_paringin;

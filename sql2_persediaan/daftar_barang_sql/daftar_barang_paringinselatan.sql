DROP VIEW IF EXISTS view_daftar_barang_paringinselatan;

CREATE VIEW view_daftar_barang_paringinselatan AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_paringinselatan FROM lap_paringinselatan;

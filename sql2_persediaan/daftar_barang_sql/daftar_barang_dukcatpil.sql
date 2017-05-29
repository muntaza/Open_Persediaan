DROP VIEW IF EXISTS view_daftar_barang_dukcatpil;

CREATE VIEW view_daftar_barang_dukcatpil AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dukcatpil FROM lap_dukcatpil;

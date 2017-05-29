DROP VIEW IF EXISTS view_daftar_barang_perindagkop;

CREATE VIEW view_daftar_barang_perindagkop AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_perindagkop FROM lap_perindagkop;

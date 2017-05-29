DROP VIEW IF EXISTS view_daftar_pengeluaran_paringinkota;

CREATE VIEW view_daftar_pengeluaran_paringinkota AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 29;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_paringinkota FROM lap_paringinkota;

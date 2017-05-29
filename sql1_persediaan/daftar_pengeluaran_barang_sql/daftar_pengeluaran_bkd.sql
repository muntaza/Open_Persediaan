DROP VIEW IF EXISTS view_daftar_pengeluaran_bkd;

CREATE VIEW view_daftar_pengeluaran_bkd AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_bkd FROM lap_bkd;

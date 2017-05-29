DROP VIEW IF EXISTS view_buku_pengeluaran_setda;

CREATE VIEW view_buku_pengeluaran_setda AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_setda FROM lap_setda;

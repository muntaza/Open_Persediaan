DROP VIEW IF EXISTS view_buku_pengeluaran_bkd;

CREATE VIEW view_buku_pengeluaran_bkd AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_bkd FROM lap_bkd;

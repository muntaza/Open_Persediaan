DROP VIEW IF EXISTS view_buku_pengeluaran_bppkp;

CREATE VIEW view_buku_pengeluaran_bppkp AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_bppkp FROM lap_bppkp;

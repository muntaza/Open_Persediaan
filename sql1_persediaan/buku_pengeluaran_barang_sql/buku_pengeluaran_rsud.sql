DROP VIEW IF EXISTS view_buku_pengeluaran_rsud;

CREATE VIEW view_buku_pengeluaran_rsud AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_rsud FROM lap_rsud;

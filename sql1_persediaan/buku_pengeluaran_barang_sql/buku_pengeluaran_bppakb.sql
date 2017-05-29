DROP VIEW IF EXISTS view_buku_pengeluaran_bppakb;

CREATE VIEW view_buku_pengeluaran_bppakb AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_bppakb FROM lap_bppakb;

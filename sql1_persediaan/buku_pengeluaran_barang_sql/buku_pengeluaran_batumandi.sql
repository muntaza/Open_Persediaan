DROP VIEW IF EXISTS view_buku_pengeluaran_batumandi;

CREATE VIEW view_buku_pengeluaran_batumandi AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_batumandi FROM lap_batumandi;

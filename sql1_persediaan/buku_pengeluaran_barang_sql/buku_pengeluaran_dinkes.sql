DROP VIEW IF EXISTS view_buku_pengeluaran_dinkes;

CREATE VIEW view_buku_pengeluaran_dinkes AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_dinkes FROM lap_dinkes;

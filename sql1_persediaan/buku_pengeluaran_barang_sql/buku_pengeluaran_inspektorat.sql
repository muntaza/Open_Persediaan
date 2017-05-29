DROP VIEW IF EXISTS view_buku_pengeluaran_inspektorat;

CREATE VIEW view_buku_pengeluaran_inspektorat AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_inspektorat FROM lap_inspektorat;

DROP VIEW IF EXISTS view_buku_pengeluaran_perindagkop;

CREATE VIEW view_buku_pengeluaran_perindagkop AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_perindagkop FROM lap_perindagkop;

DROP VIEW IF EXISTS view_buku_pengeluaran_bpmpd;

CREATE VIEW view_buku_pengeluaran_bpmpd AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_bpmpd FROM lap_bpmpd;

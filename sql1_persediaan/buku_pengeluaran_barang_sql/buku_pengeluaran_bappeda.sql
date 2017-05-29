DROP VIEW IF EXISTS view_buku_pengeluaran_bappeda;

CREATE VIEW view_buku_pengeluaran_bappeda AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_bappeda FROM lap_bappeda;

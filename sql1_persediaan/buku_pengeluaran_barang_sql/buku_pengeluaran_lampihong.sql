DROP VIEW IF EXISTS view_buku_pengeluaran_lampihong;

CREATE VIEW view_buku_pengeluaran_lampihong AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_lampihong FROM lap_lampihong;

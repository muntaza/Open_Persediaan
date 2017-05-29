DROP VIEW IF EXISTS view_buku_pengeluaran_kpdad;

CREATE VIEW view_buku_pengeluaran_kpdad AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_kpdad FROM lap_kpdad;

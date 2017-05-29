DROP VIEW IF EXISTS view_buku_pengeluaran_dppkad;

CREATE VIEW view_buku_pengeluaran_dppkad AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_dppkad FROM lap_dppkad;

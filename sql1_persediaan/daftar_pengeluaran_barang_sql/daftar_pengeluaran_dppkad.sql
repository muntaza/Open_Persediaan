DROP VIEW IF EXISTS view_daftar_pengeluaran_dppkad;

CREATE VIEW view_daftar_pengeluaran_dppkad AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_dppkad FROM lap_dppkad;

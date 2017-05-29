DROP VIEW IF EXISTS view_daftar_pengeluaran_setwan;

CREATE VIEW view_daftar_pengeluaran_setwan AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_setwan FROM lap_setwan;

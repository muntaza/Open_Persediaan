DROP VIEW IF EXISTS view_daftar_pengeluaran_blhk;

CREATE VIEW view_daftar_pengeluaran_blhk AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_blhk FROM lap_blhk;

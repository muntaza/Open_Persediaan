DROP VIEW IF EXISTS view_daftar_pengeluaran_dispu;

CREATE VIEW view_daftar_pengeluaran_dispu AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_dispu FROM lap_dispu;

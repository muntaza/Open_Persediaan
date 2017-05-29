DROP VIEW IF EXISTS view_daftar_pengeluaran_dishub;

CREATE VIEW view_daftar_pengeluaran_dishub AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_dishub FROM lap_dishub;

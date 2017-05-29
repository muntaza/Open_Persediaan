DROP VIEW IF EXISTS view_daftar_pengeluaran_rsud;

CREATE VIEW view_daftar_pengeluaran_rsud AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_rsud FROM lap_rsud;

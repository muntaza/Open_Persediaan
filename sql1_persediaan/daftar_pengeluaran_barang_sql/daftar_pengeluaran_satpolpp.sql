DROP VIEW IF EXISTS view_daftar_pengeluaran_satpolpp;

CREATE VIEW view_daftar_pengeluaran_satpolpp AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_satpolpp FROM lap_satpolpp;

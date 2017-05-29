DROP VIEW IF EXISTS view_daftar_pengeluaran_batupiring;

CREATE VIEW view_daftar_pengeluaran_batupiring AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_batupiring FROM lap_batupiring;

DROP VIEW IF EXISTS view_daftar_pengeluaran_pertanian;

CREATE VIEW view_daftar_pengeluaran_pertanian AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_pertanian FROM lap_pertanian;

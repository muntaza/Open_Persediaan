DROP VIEW IF EXISTS view_daftar_pengeluaran_juai;

CREATE VIEW view_daftar_pengeluaran_juai AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_juai FROM lap_juai;

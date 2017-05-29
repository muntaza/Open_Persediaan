DROP VIEW IF EXISTS view_daftar_pengeluaran_batumandi;

CREATE VIEW view_daftar_pengeluaran_batumandi AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_batumandi FROM lap_batumandi;

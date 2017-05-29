DROP VIEW IF EXISTS view_daftar_pengeluaran_bppakb;

CREATE VIEW view_daftar_pengeluaran_bppakb AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_bppakb FROM lap_bppakb;

DROP VIEW IF EXISTS view_daftar_pengeluaran_paringintimur;

CREATE VIEW view_daftar_pengeluaran_paringintimur AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_paringintimur FROM lap_paringintimur;

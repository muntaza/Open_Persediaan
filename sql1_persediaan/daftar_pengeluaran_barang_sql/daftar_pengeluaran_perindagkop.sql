DROP VIEW IF EXISTS view_daftar_pengeluaran_perindagkop;

CREATE VIEW view_daftar_pengeluaran_perindagkop AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_perindagkop FROM lap_perindagkop;

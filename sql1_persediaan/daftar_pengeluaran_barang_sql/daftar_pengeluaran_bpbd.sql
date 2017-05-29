DROP VIEW IF EXISTS view_daftar_pengeluaran_bpbd;

CREATE VIEW view_daftar_pengeluaran_bpbd AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_bpbd FROM lap_bpbd;

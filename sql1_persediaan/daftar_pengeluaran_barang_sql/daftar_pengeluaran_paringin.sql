DROP VIEW IF EXISTS view_daftar_pengeluaran_paringin;

CREATE VIEW view_daftar_pengeluaran_paringin AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_paringin FROM lap_paringin;

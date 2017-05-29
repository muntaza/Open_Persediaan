DROP VIEW IF EXISTS view_daftar_pengeluaran_paringinselatan;

CREATE VIEW view_daftar_pengeluaran_paringinselatan AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_paringinselatan FROM lap_paringinselatan;

DROP VIEW IF EXISTS view_buku_pengeluaran_paringinselatan;

CREATE VIEW view_buku_pengeluaran_paringinselatan AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_paringinselatan FROM lap_paringinselatan;

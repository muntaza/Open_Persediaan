DROP VIEW IF EXISTS view_buku_pengeluaran_tebingtinggi;

CREATE VIEW view_buku_pengeluaran_tebingtinggi AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_tebingtinggi FROM lap_tebingtinggi;

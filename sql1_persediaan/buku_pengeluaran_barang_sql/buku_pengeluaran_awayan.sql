DROP VIEW IF EXISTS view_buku_pengeluaran_awayan;

CREATE VIEW view_buku_pengeluaran_awayan AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_awayan FROM lap_awayan;

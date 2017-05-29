DROP VIEW IF EXISTS view_buku_pengeluaran_disporaparbud;

CREATE VIEW view_buku_pengeluaran_disporaparbud AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_disporaparbud FROM lap_disporaparbud;

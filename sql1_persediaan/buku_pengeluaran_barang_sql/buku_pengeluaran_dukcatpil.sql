DROP VIEW IF EXISTS view_buku_pengeluaran_dukcatpil;

CREATE VIEW view_buku_pengeluaran_dukcatpil AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_dukcatpil FROM lap_dukcatpil;

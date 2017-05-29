DROP VIEW IF EXISTS view_daftar_pengeluaran_korpri;

CREATE VIEW view_daftar_pengeluaran_korpri AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_korpri FROM lap_korpri;

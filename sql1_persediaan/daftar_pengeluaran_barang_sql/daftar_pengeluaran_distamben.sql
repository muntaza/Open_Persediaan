DROP VIEW IF EXISTS view_daftar_pengeluaran_distamben;

CREATE VIEW view_daftar_pengeluaran_distamben AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 17;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_distamben FROM lap_distamben;

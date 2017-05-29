DROP VIEW IF EXISTS view_daftar_penerimaan_blhk;

CREATE VIEW view_daftar_penerimaan_blhk AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_blhk, sub_skpd TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_blhk, sub_skpd FROM lap_blhk;

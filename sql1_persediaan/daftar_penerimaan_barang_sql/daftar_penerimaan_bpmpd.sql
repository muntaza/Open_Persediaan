DROP VIEW IF EXISTS view_daftar_penerimaan_bpmpd;

CREATE VIEW view_daftar_penerimaan_bpmpd AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_bpmpd, sub_skpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_bpmpd, sub_skpd FROM lap_bpmpd;

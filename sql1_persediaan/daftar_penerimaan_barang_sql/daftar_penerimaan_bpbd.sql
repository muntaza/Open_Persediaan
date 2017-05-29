DROP VIEW IF EXISTS view_daftar_penerimaan_bpbd;

CREATE VIEW view_daftar_penerimaan_bpbd AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_bpbd, sub_skpd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_bpbd, sub_skpd FROM lap_bpbd;

DROP VIEW IF EXISTS view_daftar_penerimaan_dukcatpil;

CREATE VIEW view_daftar_penerimaan_dukcatpil AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dukcatpil, sub_skpd TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dukcatpil, sub_skpd FROM lap_dukcatpil;

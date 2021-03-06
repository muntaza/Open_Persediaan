DROP VIEW IF EXISTS view_daftar_penerimaan_satpolpp;

CREATE VIEW view_daftar_penerimaan_satpolpp AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_satpolpp, sub_skpd TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_satpolpp, sub_skpd FROM lap_satpolpp;

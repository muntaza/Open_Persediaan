DROP VIEW IF EXISTS view_beban_barang4_inspektorat;

CREATE VIEW view_beban_barang4_inspektorat AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_inspektorat

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_beban_barang4_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_inspektorat FROM lap_inspektorat;

DROP VIEW IF EXISTS view_beban_barang4_kehutanan;

CREATE VIEW view_beban_barang4_kehutanan AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_kehutanan

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 14;



GRANT ALL PRIVILEGES ON view_beban_barang4_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_kehutanan FROM lap_kehutanan;

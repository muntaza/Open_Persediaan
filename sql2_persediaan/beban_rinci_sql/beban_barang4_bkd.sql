DROP VIEW IF EXISTS view_beban_barang4_bkd;

CREATE VIEW view_beban_barang4_bkd AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_bkd

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_beban_barang4_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_bkd FROM lap_bkd;

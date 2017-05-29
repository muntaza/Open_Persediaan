DROP VIEW IF EXISTS view_beban_barang4_batumandi;

CREATE VIEW view_beban_barang4_batumandi AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_batumandi

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 32;



GRANT ALL PRIVILEGES ON view_beban_barang4_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_batumandi FROM lap_batumandi;

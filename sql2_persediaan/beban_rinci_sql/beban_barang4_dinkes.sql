DROP VIEW IF EXISTS view_beban_barang4_dinkes;

CREATE VIEW view_beban_barang4_dinkes AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dinkes

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_beban_barang4_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dinkes FROM lap_dinkes;

DROP VIEW IF EXISTS view_beban_barang4_paringin;

CREATE VIEW view_beban_barang4_paringin AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_paringin

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_beban_barang4_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_paringin FROM lap_paringin;

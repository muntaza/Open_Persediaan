DROP VIEW IF EXISTS view_beban_barang4_awayan;

CREATE VIEW view_beban_barang4_awayan AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_awayan

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_beban_barang4_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_awayan FROM lap_awayan;

DROP VIEW IF EXISTS view_beban_barang4_setda;

CREATE VIEW view_beban_barang4_setda AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_setda

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_beban_barang4_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_setda FROM lap_setda;

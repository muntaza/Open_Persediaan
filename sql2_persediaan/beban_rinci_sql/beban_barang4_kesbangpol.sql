DROP VIEW IF EXISTS view_beban_barang4_kesbangpol;

CREATE VIEW view_beban_barang4_kesbangpol AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_kesbangpol

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_beban_barang4_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_kesbangpol FROM lap_kesbangpol;

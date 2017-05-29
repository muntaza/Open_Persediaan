DROP VIEW IF EXISTS view_beban_barang4_batupiring;

CREATE VIEW view_beban_barang4_batupiring AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_batupiring

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 37;



GRANT ALL PRIVILEGES ON view_beban_barang4_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_batupiring FROM lap_batupiring;

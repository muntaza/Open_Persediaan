DROP VIEW IF EXISTS view_beban_barang4_bppakb;

CREATE VIEW view_beban_barang4_bppakb AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_bppakb

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_beban_barang4_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_bppakb FROM lap_bppakb;

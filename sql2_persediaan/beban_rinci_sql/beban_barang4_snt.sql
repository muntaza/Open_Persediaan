DROP VIEW IF EXISTS view_beban_barang4_snt;

CREATE VIEW view_beban_barang4_snt AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_snt

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_beban_barang4_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_snt FROM lap_snt;

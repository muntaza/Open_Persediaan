DROP VIEW IF EXISTS view_beban_barang4_bpbd;

CREATE VIEW view_beban_barang4_bpbd AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_bpbd

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_beban_barang4_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_bpbd FROM lap_bpbd;

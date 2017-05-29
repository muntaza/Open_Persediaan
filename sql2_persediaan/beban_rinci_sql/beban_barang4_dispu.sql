DROP VIEW IF EXISTS view_beban_barang4_dispu;

CREATE VIEW view_beban_barang4_dispu AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dispu

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_beban_barang4_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dispu FROM lap_dispu;

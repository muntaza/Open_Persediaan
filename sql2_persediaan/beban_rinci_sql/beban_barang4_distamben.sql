DROP VIEW IF EXISTS view_beban_barang4_distamben;

CREATE VIEW view_beban_barang4_distamben AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_distamben

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 17;



GRANT ALL PRIVILEGES ON view_beban_barang4_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_distamben FROM lap_distamben;

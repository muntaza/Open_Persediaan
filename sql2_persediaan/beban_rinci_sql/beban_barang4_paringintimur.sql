DROP VIEW IF EXISTS view_beban_barang4_paringintimur;

CREATE VIEW view_beban_barang4_paringintimur AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_paringintimur

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 30;



GRANT ALL PRIVILEGES ON view_beban_barang4_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_paringintimur FROM lap_paringintimur;

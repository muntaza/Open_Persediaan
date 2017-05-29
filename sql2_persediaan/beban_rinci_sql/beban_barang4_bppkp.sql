DROP VIEW IF EXISTS view_beban_barang4_bppkp;

CREATE VIEW view_beban_barang4_bppkp AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_bppkp

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_beban_barang4_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_bppkp FROM lap_bppkp;

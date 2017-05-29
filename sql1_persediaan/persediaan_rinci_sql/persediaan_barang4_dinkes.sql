DROP VIEW IF EXISTS view_persediaan_barang4_dinkes;

CREATE VIEW view_persediaan_barang4_dinkes AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dinkes

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dinkes FROM lap_dinkes;

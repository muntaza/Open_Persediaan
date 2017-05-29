DROP VIEW IF EXISTS view_persediaan_barang4_paringintimur;

CREATE VIEW view_persediaan_barang4_paringintimur AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_paringintimur

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 30;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_paringintimur FROM lap_paringintimur;

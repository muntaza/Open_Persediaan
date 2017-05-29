DROP VIEW IF EXISTS view_persediaan_barang4_paringinkota;

CREATE VIEW view_persediaan_barang4_paringinkota AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_paringinkota

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 29;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_paringinkota FROM lap_paringinkota;

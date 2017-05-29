DROP VIEW IF EXISTS view_persediaan_barang4_dispu;

CREATE VIEW view_persediaan_barang4_dispu AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dispu

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dispu FROM lap_dispu;

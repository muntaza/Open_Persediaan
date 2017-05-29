DROP VIEW IF EXISTS view_persediaan_barang4_paringin;

CREATE VIEW view_persediaan_barang4_paringin AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_paringin

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_paringin FROM lap_paringin;

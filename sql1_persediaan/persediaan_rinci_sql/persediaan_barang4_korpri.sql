DROP VIEW IF EXISTS view_persediaan_barang4_korpri;

CREATE VIEW view_persediaan_barang4_korpri AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_korpri

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 27;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_korpri FROM lap_korpri;

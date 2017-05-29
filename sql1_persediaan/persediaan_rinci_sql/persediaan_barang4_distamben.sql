DROP VIEW IF EXISTS view_persediaan_barang4_distamben;

CREATE VIEW view_persediaan_barang4_distamben AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_distamben

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 17;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_distamben FROM lap_distamben;

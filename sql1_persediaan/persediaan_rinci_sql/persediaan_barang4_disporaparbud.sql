DROP VIEW IF EXISTS view_persediaan_barang4_disporaparbud;

CREATE VIEW view_persediaan_barang4_disporaparbud AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_disporaparbud

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_disporaparbud FROM lap_disporaparbud;

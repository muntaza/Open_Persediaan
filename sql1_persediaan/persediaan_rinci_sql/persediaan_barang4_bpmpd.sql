DROP VIEW IF EXISTS view_persediaan_barang4_bpmpd;

CREATE VIEW view_persediaan_barang4_bpmpd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_bpmpd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bpmpd FROM lap_bpmpd;

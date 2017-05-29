DROP VIEW IF EXISTS view_persediaan_barang4_paringinselatan;

CREATE VIEW view_persediaan_barang4_paringinselatan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_paringinselatan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_paringinselatan FROM lap_paringinselatan;

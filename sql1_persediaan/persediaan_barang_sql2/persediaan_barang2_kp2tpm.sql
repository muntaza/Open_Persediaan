DROP VIEW IF EXISTS view_persediaan_barang2_kp2tpm;

CREATE VIEW view_persediaan_barang2_kp2tpm AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_kp2tpm

WHERE
1 = 1  AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_kp2tpm FROM lap_kp2tpm;

DROP VIEW IF EXISTS view_kartu_barang2_kp2tpm;

CREATE VIEW view_kartu_barang2_kp2tpm AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_kp2tpm

WHERE
1 = 1  AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_kartu_barang2_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_kp2tpm FROM lap_kp2tpm;

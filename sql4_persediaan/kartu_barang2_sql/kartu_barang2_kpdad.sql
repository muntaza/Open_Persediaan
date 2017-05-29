DROP VIEW IF EXISTS view_kartu_barang2_kpdad;

CREATE VIEW view_kartu_barang2_kpdad AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_kpdad

WHERE
1 = 1  AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_kartu_barang2_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_kpdad FROM lap_kpdad;

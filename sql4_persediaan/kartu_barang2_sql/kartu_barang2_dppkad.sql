DROP VIEW IF EXISTS view_kartu_barang2_dppkad;

CREATE VIEW view_kartu_barang2_dppkad AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_dppkad

WHERE
1 = 1  AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_kartu_barang2_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_dppkad FROM lap_dppkad;

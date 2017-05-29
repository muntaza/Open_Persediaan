DROP VIEW IF EXISTS view_kartu_barang2_dispu;

CREATE VIEW view_kartu_barang2_dispu AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_dispu

WHERE
1 = 1  AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_kartu_barang2_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_dispu FROM lap_dispu;

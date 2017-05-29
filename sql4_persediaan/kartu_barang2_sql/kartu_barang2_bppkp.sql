DROP VIEW IF EXISTS view_kartu_barang2_bppkp;

CREATE VIEW view_kartu_barang2_bppkp AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_bppkp

WHERE
1 = 1  AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_kartu_barang2_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_bppkp FROM lap_bppkp;

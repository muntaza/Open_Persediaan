DROP VIEW IF EXISTS view_kartu_barang2_bppakb;

CREATE VIEW view_kartu_barang2_bppakb AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_bppakb

WHERE
1 = 1  AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_kartu_barang2_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_bppakb FROM lap_bppakb;

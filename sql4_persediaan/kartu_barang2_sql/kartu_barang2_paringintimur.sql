DROP VIEW IF EXISTS view_kartu_barang2_paringintimur;

CREATE VIEW view_kartu_barang2_paringintimur AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_paringintimur

WHERE
1 = 1  AND
id_skpd = 30;



GRANT ALL PRIVILEGES ON view_kartu_barang2_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_paringintimur FROM lap_paringintimur;

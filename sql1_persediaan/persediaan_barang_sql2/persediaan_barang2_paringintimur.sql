DROP VIEW IF EXISTS view_persediaan_barang2_paringintimur;

CREATE VIEW view_persediaan_barang2_paringintimur AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_paringintimur

WHERE
1 = 1  AND
id_skpd = 30;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_paringintimur FROM lap_paringintimur;

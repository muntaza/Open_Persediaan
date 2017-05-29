DROP VIEW IF EXISTS view_persediaan_barang2_tebingtinggi;

CREATE VIEW view_persediaan_barang2_tebingtinggi AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_tebingtinggi

WHERE
1 = 1  AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_tebingtinggi FROM lap_tebingtinggi;

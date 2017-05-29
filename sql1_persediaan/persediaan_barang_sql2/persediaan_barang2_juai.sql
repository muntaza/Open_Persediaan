DROP VIEW IF EXISTS view_persediaan_barang2_juai;

CREATE VIEW view_persediaan_barang2_juai AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_juai

WHERE
1 = 1  AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_juai FROM lap_juai;

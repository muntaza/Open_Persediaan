DROP VIEW IF EXISTS view_persediaan_barang2_batupiring;

CREATE VIEW view_persediaan_barang2_batupiring AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_batupiring

WHERE
1 = 1  AND
id_skpd = 37;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_batupiring FROM lap_batupiring;

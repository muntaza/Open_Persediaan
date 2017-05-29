DROP VIEW IF EXISTS view_persediaan_barang2_inspektorat;

CREATE VIEW view_persediaan_barang2_inspektorat AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_inspektorat

WHERE
1 = 1  AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_inspektorat FROM lap_inspektorat;

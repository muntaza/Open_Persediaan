DROP VIEW IF EXISTS view_kartu_barang2_inspektorat;

CREATE VIEW view_kartu_barang2_inspektorat AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_inspektorat

WHERE
1 = 1  AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_kartu_barang2_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_inspektorat FROM lap_inspektorat;

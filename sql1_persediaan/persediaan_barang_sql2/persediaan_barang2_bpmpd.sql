DROP VIEW IF EXISTS view_persediaan_barang2_bpmpd;

CREATE VIEW view_persediaan_barang2_bpmpd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bpmpd

WHERE
1 = 1  AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bpmpd FROM lap_bpmpd;

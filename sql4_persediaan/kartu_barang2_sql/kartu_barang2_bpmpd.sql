DROP VIEW IF EXISTS view_kartu_barang2_bpmpd;

CREATE VIEW view_kartu_barang2_bpmpd AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_bpmpd

WHERE
1 = 1  AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_kartu_barang2_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_bpmpd FROM lap_bpmpd;

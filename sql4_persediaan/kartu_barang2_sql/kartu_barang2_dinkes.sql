DROP VIEW IF EXISTS view_kartu_barang2_dinkes;

CREATE VIEW view_kartu_barang2_dinkes AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_dinkes

WHERE
1 = 1  AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_kartu_barang2_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_dinkes FROM lap_dinkes;

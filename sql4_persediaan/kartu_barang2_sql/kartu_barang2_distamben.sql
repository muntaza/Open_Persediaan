DROP VIEW IF EXISTS view_kartu_barang2_distamben;

CREATE VIEW view_kartu_barang2_distamben AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_distamben

WHERE
1 = 1  AND
id_skpd = 17;



GRANT ALL PRIVILEGES ON view_kartu_barang2_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_distamben FROM lap_distamben;

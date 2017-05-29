DROP VIEW IF EXISTS view_kartu_barang2_korpri;

CREATE VIEW view_kartu_barang2_korpri AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_korpri

WHERE
1 = 1  AND
id_skpd = 27;



GRANT ALL PRIVILEGES ON view_kartu_barang2_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_korpri FROM lap_korpri;

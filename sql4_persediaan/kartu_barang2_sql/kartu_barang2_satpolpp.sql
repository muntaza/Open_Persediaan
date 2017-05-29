DROP VIEW IF EXISTS view_kartu_barang2_satpolpp;

CREATE VIEW view_kartu_barang2_satpolpp AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_satpolpp

WHERE
1 = 1  AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_kartu_barang2_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_satpolpp FROM lap_satpolpp;

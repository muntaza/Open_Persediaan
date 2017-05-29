DROP VIEW IF EXISTS view_persediaan_barang_rinci_kabupaten CASCADE;


CREATE VIEW view_persediaan_barang_rinci_kabupaten AS


SELECT
*

FROM
view_persediaan_barang4_awayan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bappeda

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_batumandi

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_batupiring

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bkd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_blhk

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bpbd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bpmpd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bppakb

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bppkp

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dinkes

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_disdik

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dishub

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_disporaparbud

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dispu

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_distamben

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dppkad

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dukcatpil

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_halong

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_inspektorat

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_juai

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_kehutanan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_kesbangpol

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_korpri

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_kp2tpm

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_kpdad

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_lampihong

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_paringin

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_paringinkota

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_paringinselatan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_paringintimur

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_perindagkop

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_pertanian

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_rsud

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_satpolpp

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_setda

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_setwan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_snt

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_tebingtinggi;

GRANT ALL PRIVILEGES ON view_persediaan_barang_rinci_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_rinci_kabupaten FROM lap_kabupaten;

DROP VIEW IF EXISTS view_kartu_barang_rinci_kabupaten CASCADE;


CREATE VIEW view_kartu_barang_rinci_kabupaten AS


SELECT
*

FROM
view_kartu_barang2_awayan

UNION ALL
SELECT
*

FROM
view_kartu_barang2_bappeda

UNION ALL
SELECT
*

FROM
view_kartu_barang2_batumandi

UNION ALL
SELECT
*

FROM
view_kartu_barang2_batupiring

UNION ALL
SELECT
*

FROM
view_kartu_barang2_bkd

UNION ALL
SELECT
*

FROM
view_kartu_barang2_blhk

UNION ALL
SELECT
*

FROM
view_kartu_barang2_bpbd

UNION ALL
SELECT
*

FROM
view_kartu_barang2_bpmpd

UNION ALL
SELECT
*

FROM
view_kartu_barang2_bppakb

UNION ALL
SELECT
*

FROM
view_kartu_barang2_bppkp

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dinkes

UNION ALL
SELECT
*

FROM
view_kartu_barang2_disdik

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dishub

UNION ALL
SELECT
*

FROM
view_kartu_barang2_disporaparbud

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dispu

UNION ALL
SELECT
*

FROM
view_kartu_barang2_distamben

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dppkad

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dukcatpil

UNION ALL
SELECT
*

FROM
view_kartu_barang2_halong

UNION ALL
SELECT
*

FROM
view_kartu_barang2_inspektorat

UNION ALL
SELECT
*

FROM
view_kartu_barang2_juai

UNION ALL
SELECT
*

FROM
view_kartu_barang2_kehutanan

UNION ALL
SELECT
*

FROM
view_kartu_barang2_kesbangpol

UNION ALL
SELECT
*

FROM
view_kartu_barang2_korpri

UNION ALL
SELECT
*

FROM
view_kartu_barang2_kp2tpm

UNION ALL
SELECT
*

FROM
view_kartu_barang2_kpdad

UNION ALL
SELECT
*

FROM
view_kartu_barang2_lampihong

UNION ALL
SELECT
*

FROM
view_kartu_barang2_paringin

UNION ALL
SELECT
*

FROM
view_kartu_barang2_paringinkota

UNION ALL
SELECT
*

FROM
view_kartu_barang2_paringinselatan

UNION ALL
SELECT
*

FROM
view_kartu_barang2_paringintimur

UNION ALL
SELECT
*

FROM
view_kartu_barang2_perindagkop

UNION ALL
SELECT
*

FROM
view_kartu_barang2_pertanian

UNION ALL
SELECT
*

FROM
view_kartu_barang2_rsud

UNION ALL
SELECT
*

FROM
view_kartu_barang2_satpolpp

UNION ALL
SELECT
*

FROM
view_kartu_barang2_setda

UNION ALL
SELECT
*

FROM
view_kartu_barang2_setwan

UNION ALL
SELECT
*

FROM
view_kartu_barang2_snt

UNION ALL
SELECT
*

FROM
view_kartu_barang2_tebingtinggi;

GRANT ALL PRIVILEGES ON view_kartu_barang_rinci_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_rinci_kabupaten FROM lap_kabupaten;

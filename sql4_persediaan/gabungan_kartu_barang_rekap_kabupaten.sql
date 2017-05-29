DROP VIEW IF EXISTS view_kartu_barang_rekap_kabupaten CASCADE;


CREATE VIEW view_kartu_barang_rekap_kabupaten AS


SELECT
*

FROM
view_kartu_barang3_awayan

UNION ALL
SELECT
*

FROM
view_kartu_barang3_bappeda

UNION ALL
SELECT
*

FROM
view_kartu_barang3_batumandi

UNION ALL
SELECT
*

FROM
view_kartu_barang3_batupiring

UNION ALL
SELECT
*

FROM
view_kartu_barang3_bkd

UNION ALL
SELECT
*

FROM
view_kartu_barang3_blhk

UNION ALL
SELECT
*

FROM
view_kartu_barang3_bpbd

UNION ALL
SELECT
*

FROM
view_kartu_barang3_bpmpd

UNION ALL
SELECT
*

FROM
view_kartu_barang3_bppakb

UNION ALL
SELECT
*

FROM
view_kartu_barang3_bppkp

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dinkes

UNION ALL
SELECT
*

FROM
view_kartu_barang3_disdik

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dishub

UNION ALL
SELECT
*

FROM
view_kartu_barang3_disporaparbud

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dispu

UNION ALL
SELECT
*

FROM
view_kartu_barang3_distamben

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dppkad

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dukcatpil

UNION ALL
SELECT
*

FROM
view_kartu_barang3_halong

UNION ALL
SELECT
*

FROM
view_kartu_barang3_inspektorat

UNION ALL
SELECT
*

FROM
view_kartu_barang3_juai

UNION ALL
SELECT
*

FROM
view_kartu_barang3_kehutanan

UNION ALL
SELECT
*

FROM
view_kartu_barang3_kesbangpol

UNION ALL
SELECT
*

FROM
view_kartu_barang3_korpri

UNION ALL
SELECT
*

FROM
view_kartu_barang3_kp2tpm

UNION ALL
SELECT
*

FROM
view_kartu_barang3_kpdad

UNION ALL
SELECT
*

FROM
view_kartu_barang3_lampihong

UNION ALL
SELECT
*

FROM
view_kartu_barang3_paringin

UNION ALL
SELECT
*

FROM
view_kartu_barang3_paringinkota

UNION ALL
SELECT
*

FROM
view_kartu_barang3_paringinselatan

UNION ALL
SELECT
*

FROM
view_kartu_barang3_paringintimur

UNION ALL
SELECT
*

FROM
view_kartu_barang3_perindagkop

UNION ALL
SELECT
*

FROM
view_kartu_barang3_pertanian

UNION ALL
SELECT
*

FROM
view_kartu_barang3_rsud

UNION ALL
SELECT
*

FROM
view_kartu_barang3_satpolpp

UNION ALL
SELECT
*

FROM
view_kartu_barang3_setda

UNION ALL
SELECT
*

FROM
view_kartu_barang3_setwan

UNION ALL
SELECT
*

FROM
view_kartu_barang3_snt

UNION ALL
SELECT
*

FROM
view_kartu_barang3_tebingtinggi;


GRANT ALL PRIVILEGES ON view_kartu_barang_rekap_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_rekap_kabupaten FROM lap_kabupaten;

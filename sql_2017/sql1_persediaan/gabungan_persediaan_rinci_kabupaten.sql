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
view_persediaan_barang4_bkd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bkppd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bpbd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_bppd

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
view_persediaan_barang4_disnakertrans

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dko

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dkp

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dkukmp

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dlh

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dpkp

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dpmd

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dpmptsp

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dppkb

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dpppa

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_dpupr

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
view_persediaan_barang4_kearsipan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_kesbangpol

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_kominfo

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
view_persediaan_barang4_paringinselatan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_pariwisata

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_perdagangan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_perikanan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_perpustakaan

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_pertanian

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
view_persediaan_barang4_sosial

UNION ALL
SELECT
*

FROM
view_persediaan_barang4_tebingtinggi

;
GRANT ALL PRIVILEGES ON view_persediaan_barang_rinci_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_rinci_kabupaten FROM lap_kabupaten;

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
view_kartu_barang2_bkd

UNION ALL
SELECT
*

FROM
view_kartu_barang2_bkppd

UNION ALL
SELECT
*

FROM
view_kartu_barang2_bpbd

UNION ALL
SELECT
*

FROM
view_kartu_barang2_bppd

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
view_kartu_barang2_disnakertrans

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dko

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dkp

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dkukmp

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dlh

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dpkp

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dpmd

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dpmptsp

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dppkb

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dpppa

UNION ALL
SELECT
*

FROM
view_kartu_barang2_dpupr

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
view_kartu_barang2_kearsipan

UNION ALL
SELECT
*

FROM
view_kartu_barang2_kesbangpol

UNION ALL
SELECT
*

FROM
view_kartu_barang2_kominfo

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
view_kartu_barang2_paringinselatan

UNION ALL
SELECT
*

FROM
view_kartu_barang2_pariwisata

UNION ALL
SELECT
*

FROM
view_kartu_barang2_perdagangan

UNION ALL
SELECT
*

FROM
view_kartu_barang2_perikanan

UNION ALL
SELECT
*

FROM
view_kartu_barang2_perpustakaan

UNION ALL
SELECT
*

FROM
view_kartu_barang2_pertanian

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
view_kartu_barang2_sosial

UNION ALL
SELECT
*

FROM
view_kartu_barang2_tebingtinggi

;
GRANT ALL PRIVILEGES ON view_kartu_barang_rinci_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_rinci_kabupaten FROM lap_kabupaten;

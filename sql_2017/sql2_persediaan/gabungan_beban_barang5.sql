DROP VIEW IF EXISTS view_beban_barang5_awayan CASCADE;

CREATE VIEW view_beban_barang5_awayan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_awayan

WHERE
1 = 1  AND
id_skpd = 34

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_beban_barang5_bappeda CASCADE;

CREATE VIEW view_beban_barang5_bappeda AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_bappeda

WHERE
1 = 1  AND
id_skpd = 21

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_beban_barang5_batumandi CASCADE;

CREATE VIEW view_beban_barang5_batumandi AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_batumandi

WHERE
1 = 1  AND
id_skpd = 32

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_beban_barang5_bkd CASCADE;

CREATE VIEW view_beban_barang5_bkd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_bkd

WHERE
1 = 1  AND
id_skpd = 19

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_beban_barang5_bkppd CASCADE;

CREATE VIEW view_beban_barang5_bkppd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_bkppd

WHERE
1 = 1  AND
id_skpd = 26

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_bkppd FROM lap_bkppd;
DROP VIEW IF EXISTS view_beban_barang5_bpbd CASCADE;

CREATE VIEW view_beban_barang5_bpbd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_bpbd

WHERE
1 = 1  AND
id_skpd = 39

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_beban_barang5_bppd CASCADE;

CREATE VIEW view_beban_barang5_bppd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_bppd

WHERE
1 = 1  AND
id_skpd = 48

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_bppd FROM lap_bppd;
DROP VIEW IF EXISTS view_beban_barang5_dinkes CASCADE;

CREATE VIEW view_beban_barang5_dinkes AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dinkes

WHERE
1 = 1  AND
id_skpd = 5

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_beban_barang5_disdik CASCADE;

CREATE VIEW view_beban_barang5_disdik AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_disdik

WHERE
1 = 1  AND
id_skpd = 7

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_beban_barang5_dishub CASCADE;

CREATE VIEW view_beban_barang5_dishub AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dishub

WHERE
1 = 1  AND
id_skpd = 4

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_beban_barang5_disnakertrans CASCADE;

CREATE VIEW view_beban_barang5_disnakertrans AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_disnakertrans

WHERE
1 = 1  AND
id_skpd = 41

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_disnakertrans FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_beban_barang5_dko CASCADE;

CREATE VIEW view_beban_barang5_dko AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dko

WHERE
1 = 1  AND
id_skpd = 23

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dko FROM lap_dko;
DROP VIEW IF EXISTS view_beban_barang5_dkp CASCADE;

CREATE VIEW view_beban_barang5_dkp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dkp

WHERE
1 = 1  AND
id_skpd = 15

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dkp FROM lap_dkp;
DROP VIEW IF EXISTS view_beban_barang5_dkukmp CASCADE;

CREATE VIEW view_beban_barang5_dkukmp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dkukmp

WHERE
1 = 1  AND
id_skpd = 16

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dkukmp FROM lap_dkukmp;
DROP VIEW IF EXISTS view_beban_barang5_dlh CASCADE;

CREATE VIEW view_beban_barang5_dlh AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dlh

WHERE
1 = 1  AND
id_skpd = 22

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dlh FROM lap_dlh;
DROP VIEW IF EXISTS view_beban_barang5_dpkp CASCADE;

CREATE VIEW view_beban_barang5_dpkp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dpkp

WHERE
1 = 1  AND
id_skpd = 40

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dpkp FROM lap_dpkp;
DROP VIEW IF EXISTS view_beban_barang5_dpmd CASCADE;

CREATE VIEW view_beban_barang5_dpmd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dpmd

WHERE
1 = 1  AND
id_skpd = 10

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dpmd FROM lap_dpmd;
DROP VIEW IF EXISTS view_beban_barang5_dpmptsp CASCADE;

CREATE VIEW view_beban_barang5_dpmptsp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dpmptsp

WHERE
1 = 1  AND
id_skpd = 18

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dpmptsp FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_beban_barang5_dppkb CASCADE;

CREATE VIEW view_beban_barang5_dppkb AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dppkb

WHERE
1 = 1  AND
id_skpd = 42

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dppkb FROM lap_dppkb;
DROP VIEW IF EXISTS view_beban_barang5_dpppa CASCADE;

CREATE VIEW view_beban_barang5_dpppa AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dpppa

WHERE
1 = 1  AND
id_skpd = 11

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dpppa FROM lap_dpppa;
DROP VIEW IF EXISTS view_beban_barang5_dpupr CASCADE;

CREATE VIEW view_beban_barang5_dpupr AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dpupr

WHERE
1 = 1  AND
id_skpd = 3

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dpupr FROM lap_dpupr;
DROP VIEW IF EXISTS view_beban_barang5_dukcatpil CASCADE;

CREATE VIEW view_beban_barang5_dukcatpil AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dukcatpil

WHERE
1 = 1  AND
id_skpd = 12

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_beban_barang5_halong CASCADE;

CREATE VIEW view_beban_barang5_halong AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_halong

WHERE
1 = 1  AND
id_skpd = 35

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_halong FROM lap_halong;
DROP VIEW IF EXISTS view_beban_barang5_inspektorat CASCADE;

CREATE VIEW view_beban_barang5_inspektorat AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_inspektorat

WHERE
1 = 1  AND
id_skpd = 20

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_beban_barang5_juai CASCADE;

CREATE VIEW view_beban_barang5_juai AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_juai

WHERE
1 = 1  AND
id_skpd = 33

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_juai FROM lap_juai;
DROP VIEW IF EXISTS view_beban_barang5_kearsipan CASCADE;

CREATE VIEW view_beban_barang5_kearsipan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_kearsipan

WHERE
1 = 1  AND
id_skpd = 44

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_kearsipan FROM lap_kearsipan;
DROP VIEW IF EXISTS view_beban_barang5_kesbangpol CASCADE;

CREATE VIEW view_beban_barang5_kesbangpol AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_kesbangpol

WHERE
1 = 1  AND
id_skpd = 24

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_beban_barang5_kominfo CASCADE;

CREATE VIEW view_beban_barang5_kominfo AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_kominfo

WHERE
1 = 1  AND
id_skpd = 43

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_kominfo FROM lap_kominfo;
DROP VIEW IF EXISTS view_beban_barang5_lampihong CASCADE;

CREATE VIEW view_beban_barang5_lampihong AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_lampihong

WHERE
1 = 1  AND
id_skpd = 31

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_beban_barang5_paringin CASCADE;

CREATE VIEW view_beban_barang5_paringin AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_paringin

WHERE
1 = 1  AND
id_skpd = 28

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_beban_barang5_paringinselatan CASCADE;

CREATE VIEW view_beban_barang5_paringinselatan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_paringinselatan

WHERE
1 = 1  AND
id_skpd = 36

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_beban_barang5_pariwisata CASCADE;

CREATE VIEW view_beban_barang5_pariwisata AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_pariwisata

WHERE
1 = 1  AND
id_skpd = 46

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_pariwisata FROM lap_pariwisata;
DROP VIEW IF EXISTS view_beban_barang5_perdagangan CASCADE;

CREATE VIEW view_beban_barang5_perdagangan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_perdagangan

WHERE
1 = 1  AND
id_skpd = 47

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_perdagangan FROM lap_perdagangan;
DROP VIEW IF EXISTS view_beban_barang5_perikanan CASCADE;

CREATE VIEW view_beban_barang5_perikanan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_perikanan

WHERE
1 = 1  AND
id_skpd = 45

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_perikanan FROM lap_perikanan;
DROP VIEW IF EXISTS view_beban_barang5_perpustakaan CASCADE;

CREATE VIEW view_beban_barang5_perpustakaan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_perpustakaan

WHERE
1 = 1  AND
id_skpd = 8

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_perpustakaan FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_beban_barang5_pertanian CASCADE;

CREATE VIEW view_beban_barang5_pertanian AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_pertanian

WHERE
1 = 1  AND
id_skpd = 13

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_beban_barang5_satpolpp CASCADE;

CREATE VIEW view_beban_barang5_satpolpp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_satpolpp

WHERE
1 = 1  AND
id_skpd = 25

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_beban_barang5_setda CASCADE;

CREATE VIEW view_beban_barang5_setda AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_setda

WHERE
1 = 1  AND
id_skpd = 2

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_setda FROM lap_setda;
DROP VIEW IF EXISTS view_beban_barang5_setwan CASCADE;

CREATE VIEW view_beban_barang5_setwan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_setwan

WHERE
1 = 1  AND
id_skpd = 1

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_beban_barang5_sosial CASCADE;

CREATE VIEW view_beban_barang5_sosial AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_sosial

WHERE
1 = 1  AND
id_skpd = 9

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_sosial FROM lap_sosial;
DROP VIEW IF EXISTS view_beban_barang5_tebingtinggi CASCADE;

CREATE VIEW view_beban_barang5_tebingtinggi AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_tebingtinggi

WHERE
1 = 1  AND
id_skpd = 38

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_tebingtinggi FROM lap_tebingtinggi;

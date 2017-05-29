DROP TABLE IF EXISTS table_2015_atl_kabupaten;
DROP TABLE IF EXISTS table_2015_beban_penyusutan_gb_2015_a2;
DROP TABLE IF EXISTS table_2015_beban_penyusutan_jij_2015_a2;
DROP TABLE IF EXISTS table_2015_beban_penyusutan_pm_2015_a2;
DROP TABLE IF EXISTS table_2015_gedung_bangunan_kabupaten;
DROP TABLE IF EXISTS table_2015_jalan_irigasi_jaringan_kabupaten;
DROP TABLE IF EXISTS table_2015_penyusutan_gb_2015_a4;
DROP TABLE IF EXISTS table_2015_penyusutan_gb_2015_e29;
DROP TABLE IF EXISTS table_2015_penyusutan_jij_2015_a4;
DROP TABLE IF EXISTS table_2015_penyusutan_jij_2015_e29;
DROP TABLE IF EXISTS table_2015_penyusutan_pm_2015_a4;
DROP TABLE IF EXISTS table_2015_penyusutan_pm_2015_e29;
DROP TABLE IF EXISTS table_2015_peralatan_mesin_kabupaten;
DROP TABLE IF EXISTS table_2015_tanah_kabupaten;




CREATE TABLE table_2015_atl_kabupaten  AS select * from materialized_view_2015_atl_kabupaten;
CREATE TABLE table_2015_beban_penyusutan_gb_2015_a2 AS SELECT * FROM materialized_view_2015_beban_penyusutan_gb_2015_a2;
CREATE TABLE table_2015_beban_penyusutan_jij_2015_a2 AS SELECT * FROM materialized_view_2015_beban_penyusutan_jij_2015_a2;
CREATE TABLE table_2015_beban_penyusutan_pm_2015_a2 AS SELECT * FROM materialized_view_2015_beban_penyusutan_pm_2015_a2;
CREATE TABLE table_2015_gedung_bangunan_kabupaten AS SELECT * FROM materialized_view_2015_gedung_bangunan_kabupaten;
CREATE TABLE table_2015_jalan_irigasi_jaringan_kabupaten AS SELECT * FROM materialized_view_2015_jalan_irigasi_jaringan_kabupaten;
CREATE TABLE table_2015_penyusutan_gb_2015_a4 AS SELECT * FROM materialized_view_2015_penyusutan_gb_2015_a4;
CREATE TABLE table_2015_penyusutan_gb_2015_e29 AS SELECT * FROM materialized_view_2015_penyusutan_gb_2015_e29;
CREATE TABLE table_2015_penyusutan_jij_2015_a4 AS SELECT * FROM materialized_view_2015_penyusutan_jij_2015_a4;
CREATE TABLE table_2015_penyusutan_jij_2015_e29 AS SELECT * FROM materialized_view_2015_penyusutan_jij_2015_e29;
CREATE TABLE table_2015_penyusutan_pm_2015_a4 AS SELECT * FROM materialized_view_2015_penyusutan_pm_2015_a4;
CREATE TABLE table_2015_penyusutan_pm_2015_e29 AS SELECT * FROM materialized_view_2015_penyusutan_pm_2015_e29;
CREATE TABLE table_2015_peralatan_mesin_kabupaten AS SELECT * FROM materialized_view_2015_peralatan_mesin_kabupaten;
CREATE TABLE table_2015_tanah_kabupaten AS SELECT * FROM materialized_view_2015_tanah_kabupaten;



GRANT ALL PRIVILEGES ON table_2015_atl_kabupaten TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_2015_beban_penyusutan_gb_2015_a2 TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_2015_beban_penyusutan_jij_2015_a2 TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_2015_beban_penyusutan_pm_2015_a2 TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_2015_gedung_bangunan_kabupaten TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_2015_jalan_irigasi_jaringan_kabupaten TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_2015_penyusutan_gb_2015_a4 TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_2015_penyusutan_gb_2015_e29 TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_2015_penyusutan_jij_2015_a4 TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_2015_penyusutan_jij_2015_e29 TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_2015_penyusutan_pm_2015_a4 TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_2015_penyusutan_pm_2015_e29 TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_2015_peralatan_mesin_kabupaten TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_2015_tanah_kabupaten TO lap_kabupaten;




REVOKE INSERT, UPDATE, DELETE ON table_2015_atl_kabupaten FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_2015_beban_penyusutan_gb_2015_a2 FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_2015_beban_penyusutan_jij_2015_a2 FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_2015_beban_penyusutan_pm_2015_a2 FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_2015_gedung_bangunan_kabupaten FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_2015_jalan_irigasi_jaringan_kabupaten FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_2015_penyusutan_gb_2015_a4 FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_2015_penyusutan_gb_2015_e29 FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_2015_penyusutan_jij_2015_a4 FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_2015_penyusutan_jij_2015_e29 FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_2015_penyusutan_pm_2015_a4 FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_2015_penyusutan_pm_2015_e29 FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_2015_peralatan_mesin_kabupaten FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_2015_tanah_kabupaten FROM lap_kabupaten;

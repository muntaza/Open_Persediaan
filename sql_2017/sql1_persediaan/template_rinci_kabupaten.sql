DROP VIEW IF EXISTS view_persediaan_barang_rinci_kabupaten CASCADE;
CREATE VIEW view_persediaan_barang_rinci_kabupaten AS


;
GRANT ALL PRIVILEGES ON view_persediaan_barang_rinci_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_rinci_kabupaten FROM lap_kabupaten;

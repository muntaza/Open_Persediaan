DROP VIEW IF EXISTS view_tahun CASCADE;


CREATE VIEW view_tahun AS

select 2015 as tahun
union
select 2016 as tahun
union
select 2017 as tahun
union
select 2018 as tahun
union
select 2019 as tahun
union
select 2020 as tahun
;


GRANT ALL PRIVILEGES ON view_tahun TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_tahun FROM lap_kabupaten;

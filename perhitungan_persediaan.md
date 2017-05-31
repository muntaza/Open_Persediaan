Algoritma Perhitungan Persediaan menggunakan Metode FIFO dengan Window Functions pada PostgreSQL


Bismillah,


Melanjutkan tulisan saya di ..sini.. mengenai window Functions, pada kesempatan ini
akan saya bahas tentang Algoritma Persediaan dengan Metode FIFO. Lebih jauh
tentang Teori FIFO bisa di lihat pada tulisan ..ini..

sumber tulisan ini mengambil algoritma FIFO yang ada ditulisan ..ini..
namun saya beri keterangan tambahan lainnya dari tulisan tersebut.

Iya, langsung ke kode-kode yang akan saya perlihatkan, disertai keterangan
yang saya anggap perlu, tanpa mengulang keterangan yang telah saya sampaikan
pada tulisan bagian pertama.

Disini saya kembali mengutip ucapan Linus: talk is cheap show me the code


```
athn0[] dmesg | head -2
OpenBSD 5.6-stable (GENERIC.MP) #0: Mon Dec 28 11:42:29 WITA 2015
    root@laptop.balangankab.go.id:/usr/src/sys/arch/amd64/compile/GENERIC.MP
athn0[] psql -V
psql (PostgreSQL) 9.3.6
```
```
athn0[] createuser -U _postgresql -P persediaan
Enter password for new role:
Enter it again:
Password:
athn0[] createdb -U _postgresql -O persediaan db_persediaan
Password:


db_persediaan=> create table persediaan (
       id serial PRIMARY KEY,
       id_barang integer,
       jumlah integer,
       harga numeric(15,0) default 0,
       tanggal date default now(),
       id_jenis_transaksi smallint
);
CREATE TABLE
```
```
Kita membuat table persediaan dengan field-field sebagai berikut:
	id	primary key
	id_barang	menampung jenis barang
	jumlah		jumlah barang masuk dan keluar
	harga		harga barang masuk
	tanggal		tanggal transaksi, default hari entry data
	id_jenis_transaksi	jenis transaksi: 1 berarti masuk, 2 berarti keluar
```

```
langsung di lakukan entry data barang sebagai berikut:
transaksi	id_barang	jumlah	harga
masuk		1		10	3000
masuk		1		5	3200
masuk		1		15	3500
keluar		1		12
masuk		2		8	2000
masuk		2		5	2200
keluar		2		9
keluar		1		8
masuk		1		10	4000
```

```
db_persediaan=> insert into persediaan (id_jenis_transaksi, id_barang, jumlah, harga)
db_persediaan-> VALUES (1, 1, 10, 3000);
INSERT 0 1
db_persediaan=> insert into persediaan (id_jenis_transaksi, id_barang, jumlah, harga)
VALUES (1, 1, 5, 3200);
INSERT 0 1
db_persediaan=> insert into persediaan (id_jenis_transaksi, id_barang, jumlah, harga)
VALUES (1, 1, 15, 3500);
INSERT 0 1
db_persediaan=> insert into persediaan (id_jenis_transaksi, id_barang, jumlah)
VALUES (2, 1, 12);
INSERT 0 1
db_persediaan=> insert into persediaan (id_jenis_transaksi, id_barang, jumlah, harga)
VALUES (1, 2, 8, 2000);
INSERT 0 1
db_persediaan=> insert into persediaan (id_jenis_transaksi, id_barang, jumlah, harga)
VALUES (1, 2, 5, 2200);
INSERT 0 1
db_persediaan=> insert into persediaan (id_jenis_transaksi, id_barang, jumlah)
VALUES (2, 2, 9);
INSERT 0 1
db_persediaan=> insert into persediaan (id_jenis_transaksi, id_barang, jumlah)
VALUES (2, 1, 8);
INSERT 0 1
db_persediaan=> insert into persediaan (id_jenis_transaksi, id_barang, jumlah, harga)
VALUES (1, 1, 10, 4000);
INSERT 0 1
db_persediaan=> select * from persediaan;
 id | id_barang | jumlah | harga |  tanggal   | id_jenis_transaksi
----+-----------+--------+-------+------------+--------------------
  1 |         1 |     10 |  3000 | 2016-03-19 |                  1
  2 |         1 |      5 |  3200 | 2016-03-19 |                  1
  3 |         1 |     15 |  3500 | 2016-03-19 |                  1
  4 |         1 |     12 |     0 | 2016-03-19 |                  2
  5 |         2 |      8 |  2000 | 2016-03-19 |                  1
  6 |         2 |      5 |  2200 | 2016-03-19 |                  1
  7 |         2 |      9 |     0 | 2016-03-19 |                  2
  8 |         1 |      8 |     0 | 2016-03-19 |                  2
  9 |         1 |     10 |  4000 | 2016-03-19 |                  1
(9 rows)
```






Algoritma menghitung persediaan:

1. Buat Query seperti ini:
select 0 as serial, id, id_barang, 0-jumlah as jumlah, harga, id_jenis_transaksi
from persediaan
where id_jenis_transaksi=2;

untuk memilih barang yang keluar.

2. Buat Query seperti ini:
select row_number() OVER (PARTITION BY id_barang ORDER BY id_barang, id) as serial,
id, id_barang, jumlah, harga, id_jenis_transaksi
from persediaan
where id_jenis_transaksi=1;

untuk melilih barang yang masuk.

3. Buat Query untuk menggabung algoritma pertama dan kedua dengan UNION ALL
dan susun berdasarkan serial, id_barang, id

4. buat view_gabung sampai dengan algoritma ke 3

5. Buat Query untuk menghitung jumlah saldo barang saat ini
   menggunakan Window Functions dengan perintah:
   sum(jumlah) over (PARTITION BY id_barang ORDER BY serial, id) as saldo

6. buat view_saldo sampai dengan algoritma ke 5

7. buat perhitungan saldo_barang dengan perintah CASE
```
     CASE WHEN saldo > 0 AND jumlah >= saldo
               THEN saldo
          WHEN saldo > 0 AND jumlah < saldo
               THEN jumlah
          ELSE 0
     END AS saldo_barang
```
8. buat view_persediaan sampai algoritma ke 7.

9. buat query untuk mengalikan saldo_barang dan harga dan
   hasilnya dinamakan jumlah_harga, lalu buat view_persediaan_rinci
   dari query tersebut

10. buat query rekap sesuai id_barang dengan perintah GROUP BY dan buat
    view_persediaan_rekap

OKE, saya langsung tampilkan kode-kode sql dengan urutan algoritma diatas.


```
db_persediaan=> select 0 as serial,
    id,
    id_barang,
    0 - jumlah as jumlah,
    harga,
    id_jenis_transaksi
from persediaan
where id_jenis_transaksi = 2;
 serial | id | id_barang | jumlah | harga | id_jenis_transaksi
--------+----+-----------+--------+-------+--------------------
      0 |  4 |         1 |    -12 |     0 |                  2
      0 |  7 |         2 |     -9 |     0 |                  2
      0 |  8 |         1 |     -8 |     0 |                  2
(3 rows)
```



algoritma no.1

```
db_persediaan=> select row_number() OVER (PARTITION BY id_barang ORDER BY id_barang, id) as serial,
    id,
    id_barang,
    jumlah,
    harga,
    id_jenis_transaksi
from persediaan
where id_jenis_transaksi = 1;
 serial | id | id_barang | jumlah | harga | id_jenis_transaksi
--------+----+-----------+--------+-------+--------------------
      1 |  1 |         1 |     10 |  3000 |                  1
      2 |  2 |         1 |      5 |  3200 |                  1
      3 |  3 |         1 |     15 |  3500 |                  1
      4 |  9 |         1 |     10 |  4000 |                  1
      1 |  5 |         2 |      8 |  2000 |                  1
      2 |  6 |         2 |      5 |  2200 |                  1
(6 rows)
```


algoritma no.2


```
db_persediaan=> select row_number() OVER (PARTITION BY id_barang ORDER BY id_barang, id) as serial,
    id,
    id_barang,
    jumlah,
    harga,
    id_jenis_transaksi
from persediaan
where id_jenis_transaksi = 1
UNION ALL
select 0 as serial,
    id,
    id_barang,
    0 - jumlah as jumlah,
    harga,
    id_jenis_transaksi
from persediaan
where id_jenis_transaksi = 2
ORDER BY id_barang, serial, id;
 serial | id | id_barang | jumlah | harga | id_jenis_transaksi
--------+----+-----------+--------+-------+--------------------
      0 |  4 |         1 |    -12 |     0 |                  2
      0 |  8 |         1 |     -8 |     0 |                  2
      1 |  1 |         1 |     10 |  3000 |                  1
      2 |  2 |         1 |      5 |  3200 |                  1
      3 |  3 |         1 |     15 |  3500 |                  1
      4 |  9 |         1 |     10 |  4000 |                  1
      0 |  7 |         2 |     -9 |     0 |                  2
      1 |  5 |         2 |      8 |  2000 |                  1
      2 |  6 |         2 |      5 |  2200 |                  1
(9 rows)
```


algoritma no.3

```
db_persediaan=> CREATE VIEW view_gabung as
    select row_number() OVER (PARTITION BY id_barang ORDER BY id_barang, id) as serial,
    id,
    id_barang,
    jumlah,
    harga,
    id_jenis_transaksi
from persediaan
where id_jenis_transaksi = 1
UNION ALL
select 0 as serial,
    id,
    id_barang,
    0 - jumlah as jumlah,
    harga,
    id_jenis_transaksi
from persediaan
where id_jenis_transaksi = 2
ORDER BY id_barang, serial, id;
CREATE VIEW
db_persediaan=>
db_persediaan=> select * from view_gabung ;
 serial | id | id_barang | jumlah | harga | id_jenis_transaksi
--------+----+-----------+--------+-------+--------------------
      0 |  4 |         1 |    -12 |     0 |                  2
      0 |  8 |         1 |     -8 |     0 |                  2
      1 |  1 |         1 |     10 |  3000 |                  1
      2 |  2 |         1 |      5 |  3200 |                  1
      3 |  3 |         1 |     15 |  3500 |                  1
      4 |  9 |         1 |     10 |  4000 |                  1
      0 |  7 |         2 |     -9 |     0 |                  2
      1 |  5 |         2 |      8 |  2000 |                  1
      2 |  6 |         2 |      5 |  2200 |                  1
(9 rows)
```



algoritma no.4



```
db_persediaan=> select *,
                   sum(jumlah) over (PARTITION BY id_barang ORDER BY serial, id) as saldo
                from view_gabung ;
 serial | id | id_barang | jumlah | harga | id_jenis_transaksi | saldo
--------+----+-----------+--------+-------+--------------------+-------
      0 |  4 |         1 |    -12 |     0 |                  2 |   -12
      0 |  8 |         1 |     -8 |     0 |                  2 |   -20
      1 |  1 |         1 |     10 |  3000 |                  1 |   -10
      2 |  2 |         1 |      5 |  3200 |                  1 |    -5
      3 |  3 |         1 |     15 |  3500 |                  1 |    10
      4 |  9 |         1 |     10 |  4000 |                  1 |    20
      0 |  7 |         2 |     -9 |     0 |                  2 |    -9
      1 |  5 |         2 |      8 |  2000 |                  1 |    -1
      2 |  6 |         2 |      5 |  2200 |                  1 |     4
(9 rows)
```
algoritma no.5


```
db_persediaan=> CREATE VIEW view_saldo as
                select *,
                   sum(jumlah) over (PARTITION BY id_barang ORDER BY serial, id) as saldo
                from view_gabung ;
CREATE VIEW
db_persediaan=>
db_persediaan=> select * from view_saldo ;
 serial | id | id_barang | jumlah | harga | id_jenis_transaksi | saldo
--------+----+-----------+--------+-------+--------------------+-------
      0 |  4 |         1 |    -12 |     0 |                  2 |   -12
      0 |  8 |         1 |     -8 |     0 |                  2 |   -20
      1 |  1 |         1 |     10 |  3000 |                  1 |   -10
      2 |  2 |         1 |      5 |  3200 |                  1 |    -5
      3 |  3 |         1 |     15 |  3500 |                  1 |    10
      4 |  9 |         1 |     10 |  4000 |                  1 |    20
      0 |  7 |         2 |     -9 |     0 |                  2 |    -9
      1 |  5 |         2 |      8 |  2000 |                  1 |    -1
      2 |  6 |         2 |      5 |  2200 |                  1 |     4
(9 rows)
```


algoritma no.6


```
db_persediaan=> select id_barang, harga, id_jenis_transaksi, saldo,
     CASE WHEN saldo > 0 AND jumlah >= saldo
               THEN saldo
          WHEN saldo > 0 AND jumlah < saldo
               THEN jumlah
          ELSE 0
     END AS saldo_barang
from view_saldo ;
 id_barang | harga | id_jenis_transaksi | saldo | saldo_barang
-----------+-------+--------------------+-------+--------------
         1 |     0 |                  2 |   -12 |            0
         1 |     0 |                  2 |   -20 |            0
         1 |  3000 |                  1 |   -10 |            0
         1 |  3200 |                  1 |    -5 |            0
         1 |  3500 |                  1 |    10 |           10
         1 |  4000 |                  1 |    20 |           10
         2 |     0 |                  2 |    -9 |            0
         2 |  2000 |                  1 |    -1 |            0
         2 |  2200 |                  1 |     4 |            4
(9 rows)
```


algoritma no.7


```
db_persediaan=> CREATE VIEW view_persediaan as
                select id_barang, harga, id_jenis_transaksi, saldo,
     CASE WHEN saldo > 0 AND jumlah >= saldo
               THEN saldo
          WHEN saldo > 0 AND jumlah < saldo
               THEN jumlah
          ELSE 0
     END AS saldo_barang
from view_saldo ;
CREATE VIEW
db_persediaan=> select * from view_persediaan ;
 id_barang | harga | id_jenis_transaksi | saldo | saldo_barang
-----------+-------+--------------------+-------+--------------
         1 |     0 |                  2 |   -12 |            0
         1 |     0 |                  2 |   -20 |            0
         1 |  3000 |                  1 |   -10 |            0
         1 |  3200 |                  1 |    -5 |            0
         1 |  3500 |                  1 |    10 |           10
         1 |  4000 |                  1 |    20 |           10
         2 |     0 |                  2 |    -9 |            0
         2 |  2000 |                  1 |    -1 |            0
         2 |  2200 |                  1 |     4 |            4
(9 rows)
```


algoritma no.8



```
db_persediaan=> select id_barang,
       harga,
       saldo_barang,
       saldo_barang * harga as jumlah_harga
from view_persediaan
where saldo_barang > 0;
 id_barang | harga | saldo_barang | jumlah_harga
-----------+-------+--------------+--------------
         1 |  3500 |           10 |        35000
         1 |  4000 |           10 |        40000
         2 |  2200 |            4 |         8800
(3 rows)

db_persediaan=>
db_persediaan=> CREATE VIEW view_persediaan_rinci as
       select id_barang,
       harga,
       saldo_barang,
       saldo_barang * harga as jumlah_harga
from view_persediaan
where saldo_barang > 0;
CREATE VIEW
db_persediaan=>
db_persediaan=> select * from view_persediaan_rinci ;
 id_barang | harga | saldo_barang | jumlah_harga
-----------+-------+--------------+--------------
         1 |  3500 |           10 |        35000
         1 |  4000 |           10 |        40000
         2 |  2200 |            4 |         8800
(3 rows)
```



algoritma no.9


```
db_persediaan=> select id_barang,
       sum(saldo_barang) as saldo_barang,
       sum(jumlah_harga) as jumlah_harga
from view_persediaan_rinci
group by id_barang;
 id_barang | saldo_barang | jumlah_harga
-----------+--------------+--------------
         1 |           20 |        75000
         2 |            4 |         8800
(2 rows)

db_persediaan=> CREATE VIEW view_persediaan_rekap as
       select id_barang,
       sum(saldo_barang) as saldo_barang,
       sum(jumlah_harga) as jumlah_harga
from view_persediaan_rinci
group by id_barang;
CREATE VIEW
db_persediaan=>
db_persediaan=> select * from view_persediaan_rekap ;
 id_barang | saldo_barang | jumlah_harga
-----------+--------------+--------------
         1 |           20 |        75000
         2 |            4 |         8800
(2 rows)
```


algoritma no.10


sampai disini kita telah bisa melihat total jumlah harga
dari persediaan yang dimiliki. Beberapa bagian dari Algortima diatas
masih bisa di rubah sesuai kebutuhan, diantaranya adalah perhitungan
jumlah barang masuk dan barang keluar, namun tidak sempat saya tampilkan
pada kesempatan ini.

Bagaimana dengan beban persediaan?

OKE, ini algoritma perhitungan Beban Persediaan:

1. Gunakan view_saldo sebagai dasar perhitungan.

2. Gunakan perintah CASE untuk mengecek id_jenis_transaksi,
   maka transaksi masuk, dan saldo < 0 berarti terpakai
   semua. sedangkan bila saldo < jumlah, maka yang terpakai
   berarti jumlah - saldo

3. buat view beban_persediaan sampai algoritma 2.

4. buat view_beban_persediaan_rinci dan view_beban_persediaan_rekap
   seperti cara menghitung sisa persediaan.
```
db_persediaan=> CREATE VIEW beban_persediaan as
                select *,
                CASE WHEN id_jenis_transaksi = 1 AND saldo < 0
                          THEN jumlah
                     WHEN id_jenis_transaksi = 1 AND saldo < jumlah
                          THEN (jumlah-saldo)
                     ELSE 0
                END as jumlah_beban
                from view_saldo ;
CREATE VIEW
db_persediaan=> select * from beban_persediaan ;
 serial | id | id_barang | jumlah | harga | id_jenis_transaksi | saldo | jumlah_beban
--------+----+-----------+--------+-------+--------------------+-------+--------------
      0 |  4 |         1 |    -12 |     0 |                  2 |   -12 |            0
      0 |  8 |         1 |     -8 |     0 |                  2 |   -20 |            0
      1 |  1 |         1 |     10 |  3000 |                  1 |   -10 |           10
      2 |  2 |         1 |      5 |  3200 |                  1 |    -5 |            5
      3 |  3 |         1 |     15 |  3500 |                  1 |    10 |            5
      4 |  9 |         1 |     10 |  4000 |                  1 |    20 |            0
      0 |  7 |         2 |     -9 |     0 |                  2 |    -9 |            0
      1 |  5 |         2 |      8 |  2000 |                  1 |    -1 |            8
      2 |  6 |         2 |      5 |  2200 |                  1 |     4 |            1
(9 rows)
```

algoritma no.1, no.2 no.3

```
db_persediaan=> CREATE VIEW view_beban_persediaan_rinci as
       select id_barang,
       harga,
       jumlah_beban,
       harga * jumlah_beban as jumlah_harga_beban
from beban_persediaan
where jumlah_beban > 0;
CREATE VIEW
db_persediaan=>
db_persediaan=> select * from view_beban_persediaan_rinci ;
 id_barang | harga | jumlah_beban | jumlah_harga_beban
-----------+-------+--------------+--------------------
         1 |  3000 |           10 |              30000
         1 |  3200 |            5 |              16000
         1 |  3500 |            5 |              17500
         2 |  2000 |            8 |              16000
         2 |  2200 |            1 |               2200
(5 rows)
```

```
db_persediaan=> CREATE VIEW view_beban_persediaan_rekap as
       select id_barang,
       sum(jumlah_beban) as jumlah_beban,
       sum(jumlah_harga_beban) as jumlah_harga_beban
from view_beban_persediaan_rinci
group by id_barang;
CREATE VIEW
db_persediaan=> select * from view_beban_persediaan_rekap ;
 id_barang | jumlah_beban | jumlah_harga_beban
-----------+--------------+--------------------
         1 |           20 |              63500
         2 |            9 |              18200
```

algoritma no.4


Di bagian akhir ini, akan ada perhitungan REKAP yang lebih lengkap
antara barang masuk dan total jumlah harga barang masuk, dan barang
kelur beserta total jumlah harga keluar dan saldo. Dengan Algoritma
yang mirip, kita ambil dari view_saldo diatas.
```
db_persediaan=> CREATE VIEW view_masuk_rinci   AS
     select id_barang, jumlah, harga, id_jenis_transaksi, saldo,
     CASE WHEN saldo > 0 AND jumlah >= saldo
               THEN saldo
          WHEN saldo > 0 AND jumlah < saldo
               THEN jumlah
          ELSE 0
     END AS saldo_barang,
     CASE WHEN jumlah > 0
          THEN jumlah
          ELSE 0
     END as jumlah_masuk
from view_saldo ;
```
```
db_persediaan=> select * from view_masuk_rinci ;
 id_barang | jumlah | harga | id_jenis_transaksi | saldo | saldo_barang | jumlah_masuk
-----------+--------+-------+--------------------+-------+--------------+--------------
         1 |    -12 |     0 |                  2 |   -12 |            0 |            0
         1 |     -8 |     0 |                  2 |   -20 |            0 |            0
         1 |     10 |  3000 |                  1 |   -10 |            0 |           10
         1 |      5 |  3200 |                  1 |    -5 |            0 |            5
         1 |     15 |  3500 |                  1 |    10 |           10 |           15
         1 |     10 |  4000 |                  1 |    20 |           10 |           10
         2 |     -9 |     0 |                  2 |    -9 |            0 |            0
         2 |      8 |  2000 |                  1 |    -1 |            0 |            8
         2 |      5 |  2200 |                  1 |     4 |            4 |            5
(9 rows)
```


```
db_persediaan=> CREATE VIEW view_masuk_rekap as
       select id_barang, saldo_barang,
       saldo_barang*harga as jumlah_harga_saldo,
       jumlah_masuk,
       jumlah_masuk*harga as jumlah_harga_masuk
from view_masuk_rinci ;
```
```
db_persediaan=> select * from view_masuk_rekap ;
 id_barang | saldo_barang | jumlah_harga_saldo | jumlah_masuk | jumlah_harga_masuk
-----------+--------------+--------------------+--------------+--------------------
         1 |            0 |                  0 |            0 |                  0
         1 |            0 |                  0 |            0 |                  0
         1 |            0 |                  0 |           10 |              30000
         1 |            0 |                  0 |            5 |              16000
         1 |           10 |              35000 |           15 |              52500
         1 |           10 |              40000 |           10 |              40000
         2 |            0 |                  0 |            0 |                  0
         2 |            0 |                  0 |            8 |              16000
         2 |            4 |               8800 |            5 |              11000
(9 rows)
```

```
db_persediaan=> CREATE VIEW view_rekap_total as
       select sum(jumlah_masuk) as jumlah_masuk_total,
       sum(jumlah_harga_masuk) as jumlah_harga_masuk_total,
       sum(jumlah_masuk) - sum(saldo_barang) as jumlah_keluar_total,
       sum(jumlah_harga_masuk) - sum(jumlah_harga_saldo) as jumlah_harga_keluar_total,
       sum(saldo_barang) as saldo_barang_total,
       sum(jumlah_harga_saldo) as jumlah_harga_saldo_total
from view_masuk_rekap
group by id_barang;
CREATE VIEW
db_persediaan=>


```
db_persediaan=> select * from view_rekap_total ;
 jumlah_masuk_total | jumlah_harga_masuk_total | jumlah_keluar_total | jumlah_harga_keluar_total | saldo_barang_total | jumlah_harga_saldo_total
--------------------+--------------------------+---------------------+---------------------------+--------------------+--------------------------
                 40 |                   138500 |                  20 |                     63500 |                 20 |                    75000
                 13 |                    27000 |                   9 |                     18200 |                  4 |                     8800
(2 rows)
```
```


Sampai disini dulu pembahasan tentang Window Functions di PostgreSQL, pada tulisan
yang akan datang, Insya Allah berjudul:

Algoritma Perhitungan Penyusutan Barang Milik Daerah dengan Window Functions pada PostgreSQL


versi text dari tulisan ini dapat di download di ..sini..

athn0[] pg_dump -U persediaan db_persediaan -f db_persediaan.sql
Password:

dump database dapat di download di ..sini..




daftar_pustaka
FIFO india
FIFO Teori
Window Functions
beberapa FIFO dari Indonesia

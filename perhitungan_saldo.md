Algoritma Perhitungan Saldo Tabungan dengan Window Functions pada Postgresql


Bismillah,

Ini adalah pengenalan Window Functions, salah satu dari fitur
penting pada PostgreSQL. Apa itu Window Functions, Window Functions
itu digunakan untuk mengakses baris lain yang berhubungan dengan
baris tertentu, sebagai contoh pada baris pertama perhitungan, dapat
mengakses baris kedua sehingga nilai baris pertama dapat dikurangi
nilai baris kedua.

Linus: Talk is cheap, show me the code



Disini akan langsung di contohkan
kode-kode sql dalam perhitungan saldo. Di bawah kode-kode
tersebut akan saya beri keterangan lanjutan. Sebelum itu akan
dibuat dulu user dan databasenya. OK, kita mulai


```
$ dmesg |head -2
OpenBSD 5.8 (GENERIC.MP) #0: Tue Nov 10 11:57:58 CET 2015
    jasper@stable-58-amd64.mtier.org:/binpatchng/work-binpatch58-amd64/src/sys/arch/amd64/compile/GENERIC.MP
```

Disini saya menampilkan Operating System yang saya gunakan dalam penulisan
ini.
```
$ psql -V
psql (PostgreSQL) 9.4.5
```
Menampilkan versi PostgreSQL yang saya gunakan saat ini

```
$ createuser -U _postgresql saldo -P
Enter password for new role:
Enter it again:
Password:
```
Kita buat dulu user saldo untuk akses ke database, biasakan menggunakan
user biasa dalam mengakses database dan tidak menggunakan user
administrator yaitu _postgresql kecuali untuk hal penting.

```
$ createdb -U _postgresql -O saldo db_saldo
Password:
```
Disini di buat database db_saldo untuk perhitungan ini.



```
$ psql -U saldo db_saldo
Password for user saldo:
psql (9.4.5)
Type "help" for help.

db_saldo=>
```

masuk ke database db_saldo

```
db_saldo=> create table tabungan (
       id smallserial PRIMARY KEY,
       id_jenis_transaksi smallint,
       nilai numeric(15,0) CHECK (nilai > 0),
       tanggal date DEFAULT now()
);
CREATE TABLE
```

Disini saya membuat sebuah table bernama tabungan yang memiliki
field :
```
	id	= Primary key
	id_jenis_transaksi = menampung jenis transaksi. 1 berarti masuk, 2 berarti keluar
	nilai 	= nilai uang yang masuk, disini ada fungsi CHECK untuk memastikan bahwa nilai
		  lebih dari 0
	tanggal = tanggal transaksi, default hari entry data
```

```
db_saldo=> insert into tabungan (id_jenis_transaksi, nilai) VALUES (1, 0);
ERROR:  new row for relation "tabungan" violates check constraint "tabungan_nilai_check"
DETAIL:  Failing row contains (1, 1, 0, 2016-03-18).
```
contoh memasukkan nilai 0, maka tidak bisa masuk ke table

```
db_saldo=> select * from tabungan;
 id | id_jenis_transaksi | nilai | tanggal
----+--------------------+-------+---------
(0 rows)
```

Iya. saat ini table tidak memiliki satu baris pun. Kita akan memasukkan
beberapa baris dan menghitung saldo berjenjang sebagai berikut:
```
	masuk	30
	keluar	20
	kelur	5
	masuk	10
	masuk	40
```

```
db_saldo=> insert into tabungan (id_jenis_transaksi, nilai) VALUES (1, 30);
INSERT 0 1
db_saldo=> insert into tabungan (id_jenis_transaksi, nilai) VALUES (2, 20);
INSERT 0 1
db_saldo=> insert into tabungan (id_jenis_transaksi, nilai) VALUES (2, 5);
INSERT 0 1
db_saldo=> insert into tabungan (id_jenis_transaksi, nilai) VALUES (1, 10);
INSERT 0 1
db_saldo=> insert into tabungan (id_jenis_transaksi, nilai) VALUES (1, 40);
INSERT 0 1
```

sebagaimana disampaikan di atas, bahwa
```
id_jenis_transaksi = 1, berarti masuk
id_jenis_transaksi = 2, berarti keluar
```

lalu kita cek isi table tabungan
```
db_saldo=> select * from tabungan;
 id | id_jenis_transaksi | nilai |  tanggal
----+--------------------+-------+------------
  2 |                  1 |    30 | 2016-03-18
  3 |                  2 |    20 | 2016-03-18
  4 |                  2 |     5 | 2016-03-18
  5 |                  1 |    10 | 2016-03-18
  6 |                  1 |    40 | 2016-03-18
(5 rows)
```

OK, table sudah terisi, kita akan melakukan query ke table dengan Algoritma
sebagai berikut:
```
	1. Query semua baris dengan id_jenis_transaksi 1 yang berarti
	   masuk, nilai = masuk, NULL = keluar, nilai = hitung
	2. Query semua baris dengan id_jenis_transaksi 2 yang berarti
	   keluar, NULL = masuk, nilai = keluar, 0 - nilai = hitung
	3. gabungkan kedua Query diatas dengan perintah UNION ALL
	   susun berurutan sesuai id, dengan perintah ORDER BY.
	4. buat view bernama view_saldo dengan Algoritma sampai no.3 diatas
	5. Buat Query ke view_saldo untuk menghitung saldo menggunakan
	   Window Functions dengan perintah:
	   SUM(hitung) OVER (ORDER BY id) as saldo
	6. buat view_tabungan dengan Algorima sampai no.5
```
Iya, saya tampilkan kode sesuai algoritama diatas:
```
db_saldo=> select id,
               id_jenis_transaksi,
               nilai as masuk,
               NULL as keluar,
               nilai as hitung
           from   tabungan
           where  id_jenis_transaksi = 1;
 id | id_jenis_transaksi | masuk | keluar | hitung
----+--------------------+-------+--------+--------
  2 |                  1 |    30 |        |     30
  5 |                  1 |    10 |        |     10
  6 |                  1 |    40 |        |     40
(3 rows)
```

Algoritma no.1
```
db_saldo=> select id,
               id_jenis_transaksi,
               NULL as masuk,
               nilai as keluar,
               0-nilai as hitung
           from   tabungan
           where  id_jenis_transaksi = 2;
 id | id_jenis_transaksi | masuk | keluar | hitung
----+--------------------+-------+--------+--------
  3 |                  2 |       |     20 |    -20
  4 |                  2 |       |      5 |     -5
(2 rows)
```

Algoritma no.2

```
db_saldo=> select id,
               id_jenis_transaksi,
               nilai as masuk,
               NULL as keluar,
               nilai as hitung
           from   tabungan
           where  id_jenis_transaksi = 1
UNION ALL
           select id,
               id_jenis_transaksi,
               NULL as masuk,
               nilai as keluar,
               0-nilai as hitung
           from   tabungan
           where  id_jenis_transaksi = 2
ORDER BY id;
 id | id_jenis_transaksi | masuk | keluar | hitung
----+--------------------+-------+--------+--------
  2 |                  1 |    30 |        |     30
  3 |                  2 |       |     20 |    -20
  4 |                  2 |       |      5 |     -5
  5 |                  1 |    10 |        |     10
  6 |                  1 |    40 |        |     40
(5 rows)
```

Algoritma no.3
disini terlihat bahwa tabel sudah tersusun dan ada
field hitung yang akan kita gunakan menghitung saldo


```
db_saldo=> CREATE VIEW view_saldo as
               select id,
               id_jenis_transaksi,
               nilai as masuk,
               NULL as keluar,
               nilai as hitung
           from   tabungan
           where  id_jenis_transaksi = 1
UNION ALL
           select id,
               id_jenis_transaksi,
               NULL as masuk,
               nilai as keluar,
               0-nilai as hitung
           from   tabungan
           where  id_jenis_transaksi = 2
ORDER BY id;
CREATE VIEW
db_saldo=>
```

Algoritma no.4

```
db_saldo=> select * from view_saldo ;
 id | id_jenis_transaksi | masuk | keluar | hitung
----+--------------------+-------+--------+--------
  2 |                  1 |    30 |        |     30
  3 |                  2 |       |     20 |    -20
  4 |                  2 |       |      5 |     -5
  5 |                  1 |    10 |        |     10
  6 |                  1 |    40 |        |     40
(5 rows)
```

terlihat kita sudah bisa mengakses view_saldo.

```
db_saldo=> select id,
               id_jenis_transaksi,
               masuk,
               keluar,
               SUM(hitung) OVER (ORDER BY id) as saldo
           from view_saldo;
 id | id_jenis_transaksi | masuk | keluar | saldo
----+--------------------+-------+--------+-------
  2 |                  1 |    30 |        |    30
  3 |                  2 |       |     20 |    10
  4 |                  2 |       |      5 |     5
  5 |                  1 |    10 |        |    15
  6 |                  1 |    40 |        |    55
(5 rows)
```
Algoritma no. 5

```
db_saldo=> CREATE VIEW view_tabungan as
               select id,
               id_jenis_transaksi,
               masuk,
               keluar,
               SUM(hitung) OVER (ORDER BY id) as saldo
           from view_saldo;
CREATE VIEW
```

Algoritma no.6

Dengan view_tabungan kita dapat melihat saldo. Hasil akhir adalah menampilkan table
tabungan dan view_tabungan sebagai berikut:

```
db_saldo=> select * from tabungan;
 id | id_jenis_transaksi | nilai |  tanggal
----+--------------------+-------+------------
  2 |                  1 |    30 | 2016-03-18
  3 |                  2 |    20 | 2016-03-18
  4 |                  2 |     5 | 2016-03-18
  5 |                  1 |    10 | 2016-03-18
  6 |                  1 |    40 | 2016-03-18
(5 rows)

db_saldo=> select * from view_tabungan ;
 id | id_jenis_transaksi | masuk | keluar | saldo
----+--------------------+-------+--------+-------
  2 |                  1 |    30 |        |    30
  3 |                  2 |       |     20 |    10
  4 |                  2 |       |      5 |     5
  5 |                  1 |    10 |        |    15
  6 |                  1 |    40 |        |    55
(5 rows)
```

Pada bagian akhir ini, saya tampilkan dump dari database db_saldo:

```
$ pg_dump -U saldo db_saldo -f db_saldo.sql
Password:
```

file db_saldo.sql dapat di download di sini
https://github.com/muntaza/Open_Persediaan/blob/master/db_saldo.sql


sebagai tambahan pengetahun, disini dikenalkan
PL/pgSQL - SQL Procedural Language, menggunakan
perintah CASE sebagai contoh, untuk memperbagus
tampilan bisa di gunakan Query sebagai berikut:

```
db_saldo=> select id,
               CASE WHEN id_jenis_transaksi = 1
			THEN 'masuk'
		    ELSE
			'keluar'
               END as transaksi,
               masuk,
               keluar,
               SUM(hitung) OVER (ORDER BY id) as saldo
           from view_saldo;
 id | transaksi | masuk | keluar | saldo
----+-----------+-------+--------+-------
  2 | masuk     |    30 |        |    30
  3 | keluar    |       |     20 |    10
  4 | keluar    |       |      5 |     5
  5 | masuk     |    10 |        |    15
  6 | masuk     |    40 |        |    55
(5 rows)
```

Terlihat bahwa perintah CASE melakukan pengecekan
pada field id_jenis_transaksi, bila bernilai 1
maka akan tampil 'masuk', dan selain 1 akan
tampil 'keluar'.


Ini yang dapat saya sampaikan sebagai Pendahuluan Tulisan
tentang Window Functions ini, dan Insya Allah, akan
saya lanjutkan pembahasan ini pada tulisan yang berjudul


Algoritma Perhitungan Persediaan menggunakan Metode FIFO dengan Window Functions pada PostgreSQL

https://github.com/muntaza/Open_Persediaan/blob/master/perhitungan_persediaan.md

Tertanda

Muhammad Muntaza bin Hatta






daftar pustaka
https://callmeranjeet.wordpress.com/2014/09/01/calculating-stock-with-fifo-method-in-sql/

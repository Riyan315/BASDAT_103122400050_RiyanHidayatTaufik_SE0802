SQL> -- nama:Riyan Hidayat Taufik
SQL> -- nim:103122400050
SQL> create table film (
  2  id_film number primary key,
  3  judul varchar(100),
  4  sinopsis varchar(255),
  5  tahun number,
  6  durasi number);
create table film (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> drop table film;

Table dropped.

SQL> create table film (
  2  id_film number primary key,
  3  judul varchar(100),
  4  sinopsis varchar(255),
  5  tahun number,
  6  durasi number);

Table created.

SQL> desc film
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_FILM                                   NOT NULL NUMBER
 JUDUL                                              VARCHAR2(100)
 SINOPSIS                                           VARCHAR2(255)
 TAHUN                                              NUMBER
 DURASI                                             NUMBER

SQL> creat table theater (
SP2-0734: unknown command beginning "creat tabl..." - rest of line ignored.
SQL> create table theater (
  2  id_theater number primary key,
  3  harga number,
  4  kapasitas number,
  5  kelas varchar);
kelas varchar)
             *
ERROR at line 5:
ORA-00906: missing left parenthesis 


SQL> create table theater (
  2  id_theater number primary key,
  3  harga number,
  4  kapasitas number,
  5  kelas varchar(50));

Table created.

SQL> desc theater
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_THEATER                                NOT NULL NUMBER
 HARGA                                              NUMBER
 KAPASITAS                                          NUMBER
 KELAS                                              VARCHAR2(50)

SQL> create table member (
  2  id_member number primary key,
  3  nama varchar(100),
  4  no_hp number,
  5  tgl_lahir date,
  6  email varchar(100));
create table member (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> drop table member;

Table dropped.

SQL> create table member (
  2  id_member number primary key,
  3  nama varchar(100),
  4  no_hp number,
  5  tgl_lahir date,
  6  email varchar(100));

Table created.

SQL> create table jadwal (
  2  id_jadwal number primary key,
  3  id_film number,
  4  id_theater number,
  5  periode_start date,
  6  periode_end date,
  7  constraint fk_film
  8  foreign key (id_film)
  9  references film(id_film),
 10  constraint fk_theater
 11  foreign key (id_theater)
 12  references theater(id_theater));

Table created.

SQL> desc jadwal
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_JADWAL                                 NOT NULL NUMBER
 ID_FILM                                            NUMBER
 ID_THEATER                                         NUMBER
 PERIODE_START                                      DATE
 PERIODE_END                                        DATE

SQL> create table inventaris (
  2  id_inventaris number primary key,
  3  id theater number,
  4  );
id theater number,
           *
ERROR at line 3:
ORA-00907: missing right parenthesis 


SQL> create table inventaris (
  2  id_inventaris number primary key,
  3  id_theater number,
  4  nomor_kursi number,
  5  constraint fk_theater_inv
  6  foreign key (id theater)
  7  references theater(id_theater));
foreign key (id theater)
                *
ERROR at line 6:
ORA-00907: missing right parenthesis 


SQL> create table inventaris (
  2  id_inventaris number primary key,
  3  id_theater number,
  4  nomor_kursi number,
  5  constraint fk_theater_inv
  6  foreign key (id_theater)
  7  references theater(id_theater));

Table created.

SQL> desc inventaris
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_INVENTARIS                             NOT NULL NUMBER
 ID_THEATER                                         NUMBER
 NOMOR_KURSI                                        NUMBER

SQL> create table transaksi (
  2  kode_pemesanan number primary key,
  3  id_jadwal number,
  4  id_member number,
  5  status varchar(50),
  6  tanggal date,
  7  total_harga number,
  8  constraint fk_jadwal
  9  foreign key (id_jadwal)
 10  references jadwal(id_jadwal),
 11  constraint fk_member
 12  foreign key (id_member)
 13  references member(id_member));

Table created.

SQL> desc transaksi
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KODE_PEMESANAN                            NOT NULL NUMBER
 ID_JADWAL                                          NUMBER
 ID_MEMBER                                          NUMBER
 STATUS                                             VARCHAR2(50)
 TANGGAL                                            DATE
 TOTAL_HARGA                                        NUMBER

SQL> desc member
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_MEMBER                                 NOT NULL NUMBER
 NAMA                                               VARCHAR2(100)
 NO_HP                                              NUMBER
 TGL_LAHIR                                          DATE
 EMAIL                                              VARCHAR2(100)

SQL> INSERT INTO Film (id_film, judul, sinopsis, tahun, durasi)
  2  );
)
*
ERROR at line 2:
ORA-00926: missing VALUES keyword 


SQL> insert into film (id_film, judul, sinopsis, tahun, durasi)
  2  values (1, 'Avengers: Endgame', 'Film superhero Marvel', 2019, 180);

1 row created.

SQL> desc film
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_FILM                                   NOT NULL NUMBER
 JUDUL                                              VARCHAR2(100)
 SINOPSIS                                           VARCHAR2(255)
 TAHUN                                              NUMBER
 DURASI                                             NUMBER

SQL> select * from film
  2  ;

   ID_FILM                                                                      
----------                                                                      
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         1                                                                      
Avengers: Endgame                                                               
Film superhero Marvel                                                           
      2019        180                                                           
                                                                                

SQL> insert into jadwal (id_jadwal, id_film, id_theater, periode_start, periode_end)
  2  values (1, 1, 1, DATE '2026-03-10', DATE '2026-03-20');
insert into jadwal (id_jadwal, id_film, id_theater, periode_start, periode_end)
*
ERROR at line 1:
ORA-02291: integrity constraint (SYSTEM.FK_THEATER) violated - parent key not 
found 


SQL> insert into theater (id_theater, harga, kapasitas, kelas)
  2  values (1, 50000, 100, 'Reguler');

1 row created.

SQL> select * from theater
  2  ;

ID_THEATER      HARGA  KAPASITAS                                                
---------- ---------- ----------                                                
KELAS                                                                           
--------------------------------------------------                              
         1      50000        100                                                
Reguler                                                                         
                                                                                

SQL> insert into inventaris (id_inventaris, id_theater, nomor_kursi)
  2  values (1, 1, 'A1');
values (1, 1, 'A1')
              *
ERROR at line 2:
ORA-01722: invalid number 


SQL> insert into inventaris (id_inventaris, id_theater, nomor_kursi)
  2  values (1, 1, '1');

1 row created.

SQL> select * from inventaris
  2  ;

ID_INVENTARIS ID_THEATER NOMOR_KURSI                                            
------------- ---------- -----------                                            
            1          1           1                                            

SQL> insert into member (id_member, nama, no_hp, tgl_lahir, email)
  2  values (1, 1, 1, DATE '2026-03-10', DATE '2026-03-20');

1 row created.

SQL> select * from member
  2  ;

 ID_MEMBER                                                                      
----------                                                                      
NAMA                                                                            
--------------------------------------------------------------------------------
     NO_HP TGL_LAHIR                                                            
---------- ---------                                                            
EMAIL                                                                           
--------------------------------------------------------------------------------
         1                                                                      
1                                                                               
         1 10-MAR-26                                                            
20-MAR-26                                                                       
                                                                                

SQL> insert into member (id_member, nama, no_hp, tgl_lahir, email)
  2  );
)
*
ERROR at line 2:
ORA-00926: missing VALUES keyword 


SQL> DELETE FROM Member WHERE id_member = 1;

1 row deleted.

SQL> insert into member (id_member, nama, no_hp, tgl_lahir, email)
  2  values (1, 'Riyan', '08123456789', DATE '2000-05-10', 'riyan@example.com');

1 row created.

SQL> select * from member;

 ID_MEMBER                                                                      
----------                                                                      
NAMA                                                                            
--------------------------------------------------------------------------------
     NO_HP TGL_LAHIR                                                            
---------- ---------                                                            
EMAIL                                                                           
--------------------------------------------------------------------------------
         1                                                                      
Riyan                                                                           
8123456789 10-MAY-00                                                            
riyan@example.com                                                               
                                                                                

SQL> insert into jadwal Jadwal (id_jadwal, id_film, id_theater, periode_start, periode_end)
  2  values (1, 1, 1, DATE '2026-03-10', DATE '2026-03-20');

1 row created.

SQL> select * from jadwal
  2  ;

 ID_JADWAL    ID_FILM ID_THEATER PERIODE_S PERIODE_E                            
---------- ---------- ---------- --------- ---------                            
         1          1          1 10-MAR-26 20-MAR-26                            

SQL> insert into transaksi (kode_pemesanan, id_jadwal, id_member, status, tanggal, total_harga)
  2  values (1001, 1, 1, 'paid', DATE '2026-03-11', 50000);

1 row created.

SQL> select * from transaksi
  2  ;

KODE_PEMESANAN  ID_JADWAL  ID_MEMBER                                            
-------------- ---------- ----------                                            
STATUS                                             TANGGAL   TOTAL_HARGA        
-------------------------------------------------- --------- -----------        
          1001          1          1                                            
paid                                               11-MAR-26       50000        
                                                                                

SQL> update film
  2  set judul = 'doraemon'
  3  where id_film = 1;

1 row updated.

SQL> update film
  2  set durasi = 100
  3  where id_film = 1;

1 row updated.

SQL> select * from film
  2  ;

   ID_FILM                                                                      
----------                                                                      
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         1                                                                      
doraemon                                                                        
Film superhero Marvel                                                           
      2019        100                                                           
                                                                                

SQL> COLUMN judul FORMAT A20
SQL> COLUMN sinopsis FORMAT A30
SQL> SET LINESIZE 120
SQL> select id_film, judul, tahun, durasi from film;

   ID_FILM JUDUL                     TAHUN     DURASI                                                                   
---------- -------------------- ---------- ----------                                                                   
         1 doraemon                   2019        100                                                                   

SQL> update theater
  2  set harga 1000
  3  where id_theater =
  4  );
set harga 1000
          *
ERROR at line 2:
ORA-00927: missing equal sign 


SQL> update theater
  2  set harga = 1000
  3  where id_theater = 1;

1 row updated.

SQL> select * from theater;

ID_THEATER      HARGA  KAPASITAS KELAS                                                                                  
---------- ---------- ---------- --------------------------------------------------                                     
         1       1000        100 Reguler                                                                                

SQL> column kelas format a10
SQL> select * from theater
  2  ;

ID_THEATER      HARGA  KAPASITAS KELAS                                                                                  
---------- ---------- ---------- ----------                                                                             
         1       1000        100 Reguler                                                                                

SQL> select * from member
  2  ;

 ID_MEMBER NAMA                                                                                                         
---------- ----------------------------------------------------------------------------------------------------         
     NO_HP TGL_LAHIR                                                                                                    
---------- ---------                                                                                                    
EMAIL                                                                                                                   
----------------------------------------------------------------------------------------------------                    
         1 Riyan                                                                                                        
8123456789 10-MAY-00                                                                                                    
riyan@example.com                                                                                                       
                                                                                                                        

SQL> column nama format a20
SQL> column email format a30;
SQL> select * from member;

 ID_MEMBER NAMA                      NO_HP TGL_LAHIR EMAIL                                                              
---------- -------------------- ---------- --------- ------------------------------                                     
         1 Riyan                8123456789 10-MAY-00 riyan@example.com                                                  

SQL> update member
  2  set no_hp = 0909090
  3  where id-member = 1;
where id-member = 1
         *
ERROR at line 3:
ORA-00904: "MEMBER": invalid identifier 


SQL> update member
  2  set no_hp = 01010101
  3  where id_member = 1;

1 row updated.

SQL> select * from member;

 ID_MEMBER NAMA                      NO_HP TGL_LAHIR EMAIL                                                              
---------- -------------------- ---------- --------- ------------------------------                                     
         1 Riyan                   1010101 10-MAY-00 riyan@example.com                                                  

SQL> select * from transaksi
  2  ;

KODE_PEMESANAN  ID_JADWAL  ID_MEMBER STATUS                                             TANGGAL   TOTAL_HARGA           
-------------- ---------- ---------- -------------------------------------------------- --------- -----------           
          1001          1          1 paid                                               11-MAR-26       50000           

SQL> SET LINESIZE 120
SQL> COLUMN status FORMAT A15
SQL> COLUMN tanggal FORMAT A12
SQL> COLUMN total_harga FORMAT 999999
SQL> select * from transaksi;

KODE_PEMESANAN  ID_JADWAL  ID_MEMBER STATUS          TANGGAL      TOTAL_HARGA                                           
-------------- ---------- ---------- --------------- ------------ -----------                                           
          1001          1          1 paid            11-MAR-26          50000                                           

SQL> update status
  2  set status = 'lunas'
  3  where id_transaksi = 1;
update status
       *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> update status transaksi
  2  set status = 'lunas'
  3  where id_transaksi = 1;
update status transaksi
       *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> update status transaksi
  2  set status = 'lunas'
  3  where kode_pemesanan = 1001;
update status transaksi
       *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> update transaksi
  2  set status = 'lunas'
  3  where kode_pemesanan = 1001;

1 row updated.

SQL> select * from transaksi;

KODE_PEMESANAN  ID_JADWAL  ID_MEMBER STATUS          TANGGAL      TOTAL_HARGA                                           
-------------- ---------- ---------- --------------- ------------ -----------                                           
          1001          1          1 lunas           11-MAR-26          50000                                           

SQL> delete from transaksi
  2  where kode_pemesanan = 1001;

1 row deleted.

SQL> select * from transaksi;

no rows selected

SQL> select * from member;

 ID_MEMBER NAMA                      NO_HP TGL_LAHIR EMAIL                                                              
---------- -------------------- ---------- --------- ------------------------------                                     
         1 Riyan                   1010101 10-MAY-00 riyan@example.com                                                  

SQL> delete from member
  2  where id_member = 1;

1 row deleted.

SQL> select * from member;

no rows selected

SQL> spool off

DROP TABLE "FILM" CASCADE CONSTRAINTS;
CREATE TABLE "FILM" (
  "ID_FILM" CHAR(5 BYTE) NOT NULL,
  "JUDUL" VARCHAR2(100 BYTE) NOT NULL,
  "SINOPSIS" VARCHAR2(1000 BYTE),
  "TAHUN" NUMBER,
  "DURASI" NUMBER
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;


INSERT INTO "FILM" VALUES ('F0101', 'Keluarga Cemara', 'Fokus cerita ini masih soal, Emak serta kedua anak mereka, Euis dan Ara . Persis dengan cerita di sinetronnya, film ini mengisahkan tentang bagaimana perjalanan hidup keluarga Abah yang semula nyaman dan mapan lalu kemudian mendadak bangkrut. Abah pun mengajak keluarganya pindah ke rumah warisan yang cukup jauh dari kota. Dengan segala keterbatasan dan kekurangan yang ia memiliki, Abah berusaha menjadi kepala keluarga serta ayah yang baik untuk anak-anaknya. Untung saja, Emak tak pernah lelah mendampinginya dan berusaha menjadi sandaran di saat mereka sedih.', '2019', '110');
INSERT INTO "FILM" VALUES ('F0102', 'Habibie Ainun 3', 'Habibie Ainun 3 adalah sebuah film Indonesia tahun 2019 yang disutradarai oleh Hanung Bramantyo dan diproduksi oleh Manoj Punjabi (MD Pictures). Film ini adalah film ketiga dari seri film Habibie Ainun. Bila Rudy Habibie merupakan prekuel dari kisah Habibie muda, maka Habibie Ainun 3 ini adalah prekuel dari kisah Ainun muda. Film ini dijadwalkan rilis pada 19 Desember 2019.', '2019', '96');
INSERT INTO "FILM" VALUES ('F0103', 'Taufiq', 'Kisah penjalanan hidup politisi yang juga suami Mantan Presiden RI, Megawati Soekarnoputri, Taufiq Kiemas diangkat dalam sebuah film tayang 14 Maret 2019. Film yang diangkat dari kisah nyata itu disutradarai sekaligus skenarionya ditulis oleh Ismail Basbeth. Perjalanan hidup membawanya ke Jakarta dan bertemu langsung dengan Soekarno, menjalin persahabatan dengan Guntur Soekarnoputra serta bertemu Megawati Soekarnoputri untuk pertama kalinya. Taufiq akan memahami arti dari persahabatan, keluarga, cinta dan negara ketika dia menjalani ujian hidup sebagai seorang nasionalis. Setelah itu Ia dijebloskan ke penjara bersama sahabatnya dituduh sebagai anggota Komunis. Dalam penjara Taufiq banyak bertemu orang-orang hebat. Dari situlah perjalanan seorang lelaki yang menantang badai.', '2019', '105');
INSERT INTO "FILM" VALUES ('F0104', 'Buya Hamka', 'Buya Hamka adalah film drama biografi Indonesia tentang Abdul Malik Karim Amrullah atau Hamka, seorang ulama Indonesia yang dikenal sebagai penulis, pujangga, dan politisi. Buya Hamka akan mengisahkan kehidupan Hamka sejak lahir sampai meninggal dunia. Sebelum menjadi sosok yang dikenal banyak orang, Hamka telah melewati beberapa perubahan, mulai dari kanak-kanak, remaja, hingga berkeluarga. Sebagai ulama, film ini menyoroti bagaimana cara Hamka menyampaikan dakwahnya secara santun. Selain itu, Buya Hamka menyoroti aspek humanis Hamka dan prosesnya menggapai semua pencapaian.', '2019', '110');


CREATE TABLE "INVENTORI" (
  "ID_INVENTORI" CHAR(6 BYTE) NOT NULL,
  "ID_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "NOMOR_KURSI" VARCHAR2(5 BYTE)
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

INSERT ALL 
  INTO "INVENTORI" VALUES ('IN1001', 'Teater 1', 'A1')
  INTO "INVENTORI" VALUES ('IN1002', 'Teater 1', 'A2')
  INTO "INVENTORI" VALUES ('IN1003', 'Teater 1', 'A3')
  INTO "INVENTORI" VALUES ('IN1004', 'Teater 1', 'A4')
  INTO "INVENTORI" VALUES ('IN1005', 'Teater 1', 'A5')
  INTO "INVENTORI" VALUES ('IN1006', 'Teater 2', 'A6')
  INTO "INVENTORI" VALUES ('IN1007', 'Teater 2', 'A7')
  INTO "INVENTORI" VALUES ('IN1008', 'Teater 2', 'A8')
  INTO "INVENTORI" VALUES ('IN1009', 'Teater 2', 'B1')
  INTO "INVENTORI" VALUES ('IN1010', 'Teater 2', 'B2')
  INTO "INVENTORI" VALUES ('IN1011', 'Teater 3', 'C1')
  INTO "INVENTORI" VALUES ('IN1012', 'Teater 3', 'C2')
SELECT * FROM dual;

CREATE TABLE "JADWAL" (
  "ID_JADWAL" CHAR(5 BYTE) NOT NULL,
  "ID_FILM" CHAR(5 BYTE) NOT NULL,
  "ID_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "PERIODE_START" DATE,
  "PERIODE_END" DATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

INSERT ALL
  INTO "JADWAL" VALUES ('JT001', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "JADWAL" VALUES ('JT002', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "JADWAL" VALUES ('JT003', 'F0102', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "JADWAL" VALUES ('JT004', 'F0101', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "JADWAL" VALUES ('JT005', 'F0103', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "JADWAL" VALUES ('JT006', 'F0102', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "JADWAL" VALUES ('JT007', 'F0104', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "JADWAL" VALUES ('JT008', 'F0102', 'Teater 3', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "JADWAL" VALUES ('JT009', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "JADWAL" VALUES ('JT010', 'F0102', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
SELECT * FROM dual;

CREATE TABLE "MEMBER" (
  "ID_MEMBER" CHAR(6 BYTE) NOT NULL,
  "NAMA" VARCHAR2(255 BYTE) NOT NULL,
  "NO_HP" VARCHAR2(20 BYTE) NOT NULL,
  "EMAIL" VARCHAR2(20 BYTE),
  "TGL_LAHIR" DATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

INSERT ALL
  INTO "MEMBER" VALUES ('MM0111', 'Anto', '085267656789', 'Anto2016@gmail.com', TO_DATE('1989-07-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "MEMBER" VALUES ('MM0112', 'Budi', '081367589632', 'Budi2016@gmail.com', TO_DATE('1985-01-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "MEMBER" VALUES ('MM0113', 'Ari', '081267867543', 'Ari2016@gmail.com', TO_DATE('1983-11-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "MEMBER" VALUES ('MM0114', 'Rahmi', '085267935678', 'Rahmi2016@gmail.com', TO_DATE('1981-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "MEMBER" VALUES ('MM0115', 'Fahmi', '085767298908', 'Fahmi2016@gmail.com', TO_DATE('1986-07-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "MEMBER" VALUES ('MM0116', 'Rusli', '085643755398', 'Rusli2016@gmail.com', TO_DATE('1988-02-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "MEMBER" VALUES ('MM0117', 'Doni', '081398426789', 'Doni2016@gmail.com', TO_DATE('1986-04-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "MEMBER" VALUES ('MM0118', 'Tati', '085245289074', 'Tati2016@gmail.com', TO_DATE('1985-06-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "MEMBER" VALUES ('MM0119', 'Dono', '081287234567', 'Dono2016@gmail.com', TO_DATE('1990-07-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
  INTO "MEMBER" VALUES ('MM0120', 'Joko', '081223670942', 'Joko2016@gmail.com', TO_DATE('1988-07-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'))
SELECT * FROM dual;

CREATE TABLE "THEATER" (
  "ID_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "KELAS" VARCHAR2(20 BYTE),
  "HARGA" NUMBER NOT NULL,
  "KAPASITAS" NUMBER
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

INSERT ALL
  INTO "THEATER" VALUES ('Teater 1', 'Reguler', '30000', '50')
  INTO "THEATER" VALUES ('Teater 2', 'Sweetbox', '100000', '50')
  INTO "THEATER" VALUES ('Teater 3', '4D', '75000', '50')
  INTO "THEATER" VALUES ('Teater 4', 'Velvet', '80000', '50')
  INTO "THEATER" VALUES ('Teater 5', '3D', '50000', '50')
SELECT * FROM dual;

CREATE TABLE "TRANSAKSI" (
  "KODE_PEMESANAN" CHAR(6 BYTE) NOT NULL,
  "ID_MEMBER" CHAR(6 BYTE) NOT NULL,
  "ID_JADWAL" CHAR(5 BYTE) NOT NULL,
  "ID_INVENTORI" CHAR(6 BYTE) NOT NULL,
  "TANGGAL" DATE NOT NULL,
  "STATUS" VARCHAR2(20 BYTE) NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

INSERT ALL
  INTO "TRANSAKSI" VALUES ('P10001', 'MM0111', 'JT001', 'IN1010', TO_DATE('2019-06-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan')
  INTO "TRANSAKSI" VALUES ('P10002', 'MM0112', 'JT006', 'IN1009', TO_DATE('2019-06-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan')
  INTO "TRANSAKSI" VALUES ('P10003', 'MM0113', 'JT008', 'IN1008', TO_DATE('2019-06-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan')
  INTO "TRANSAKSI" VALUES ('P10004', 'MM0114', 'JT001', 'IN1007', TO_DATE('2019-06-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan')
  INTO "TRANSAKSI" VALUES ('P10005', 'MM0115', 'JT006', 'IN1006', TO_DATE('2019-06-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan')
  INTO "TRANSAKSI" VALUES ('P10006', 'MM0116', 'JT001', 'IN1001', TO_DATE('2019-06-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'bayar')
  INTO "TRANSAKSI" VALUES ('P10007', 'MM0117', 'JT008', 'IN1011', TO_DATE('2019-06-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan')
  INTO "TRANSAKSI" VALUES ('P10008', 'MM0118', 'JT001', 'IN1003', TO_DATE('2019-06-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan')
  INTO "TRANSAKSI" VALUES ('P10009', 'MM0119', 'JT006', 'IN1004', TO_DATE('2019-06-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan')
  INTO "TRANSAKSI" VALUES ('P10010', 'MM0120', 'JT008', 'IN1005', TO_DATE('2019-06-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'checkin')
SELECT * FROM dual;

-- ----------------------------
-- Primary Key structure for table FILM
-- ----------------------------
ALTER TABLE "FILM" ADD CONSTRAINT "FILM_PK" PRIMARY KEY ("ID_FILM");


-- ----------------------------
-- Primary Key structure for table INVENTORI
-- ----------------------------
ALTER TABLE "INVENTORI" ADD CONSTRAINT "INVENTORI_PK" PRIMARY KEY ("ID_INVENTORI");


-- ----------------------------
-- Primary Key structure for table JADWAL
-- ----------------------------
ALTER TABLE "JADWAL" ADD CONSTRAINT "JADWAL_PK" PRIMARY KEY ("ID_JADWAL");


-- ----------------------------
-- Primary Key structure for table MEMBER
-- ----------------------------
ALTER TABLE "MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("ID_MEMBER");


-- ----------------------------
-- Primary Key structure for table THEATER
-- ----------------------------
ALTER TABLE "THEATER" ADD CONSTRAINT "THEATER_PK" PRIMARY KEY ("ID_THEATER");


-- ----------------------------
-- Primary Key structure for table TRANSAKSI
-- ----------------------------
ALTER TABLE "TRANSAKSI" ADD CONSTRAINT "TRANSAKSI_PK" PRIMARY KEY ("KODE_PEMESANAN");

-- ----------------------------
-- Foreign Keys structure for table INVENTORI
-- ----------------------------
ALTER TABLE "INVENTORI" ADD CONSTRAINT "INVENTORI_FK1" FOREIGN KEY ("ID_THEATER") REFERENCES "THEATER" ("ID_THEATER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table JADWAL
-- ----------------------------
ALTER TABLE "JADWAL" ADD CONSTRAINT "JADWAL_FK1" FOREIGN KEY ("ID_FILM") REFERENCES "FILM" ("ID_FILM") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "JADWAL" ADD CONSTRAINT "JADWAL_FK2" FOREIGN KEY ("ID_THEATER") REFERENCES "THEATER" ("ID_THEATER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table TRANSAKSI
-- ----------------------------
ALTER TABLE "TRANSAKSI" ADD CONSTRAINT "TRANSAKSI_FK1" FOREIGN KEY ("ID_JADWAL") REFERENCES "JADWAL" ("ID_JADWAL") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "TRANSAKSI" ADD CONSTRAINT "TRANSAKSI_FK2" FOREIGN KEY ("ID_INVENTORI") REFERENCES "INVENTORI" ("ID_INVENTORI") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "TRANSAKSI" ADD CONSTRAINT "TRANSAKSI_FK3" FOREIGN KEY ("ID_MEMBER") REFERENCES "MEMBER" ("ID_MEMBER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;


SELECT 
    "ID_THEATER", 
    "PERIODE_START", 
    EXTRACT(DAY FROM NUMTODSINTERVAL("PERIODE_END" - "PERIODE_START", 'DAY')) AS LAMA_TAYANG_HARI
FROM "JADWAL"
WHERE "ID_FILM" = (SELECT "ID_FILM" FROM "FILM" WHERE "JUDUL" = 'Habibie Ainun 3');

SELECT 
    J."ID_THEATER", 
    F."JUDUL", 
    T."KELAS", 
    T."HARGA",
    CASE 
        WHEN T."HARGA" < 50000 THEN 'Murah'
        WHEN T."HARGA" > 75000 THEN 'Mahal'
        ELSE 'Normal'
    END AS KATEGORI_HARGA
FROM "JADWAL" J
JOIN "FILM" F ON J."ID_FILM" = F."ID_FILM"
JOIN "THEATER" T ON J."ID_THEATER" = T."ID_THEATER";

SELECT 
    M."ID_MEMBER", 
    T."HARGA" AS HARGA_AWAL,
    EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM M."TGL_LAHIR") AS UMUR,
    CASE 
        WHEN (EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM M."TGL_LAHIR")) <= 32 
        THEN T."HARGA" * 0.9 
        ELSE T."HARGA" 
    END AS HARGA_SETELAH_DISKON
FROM "TRANSAKSI" TR
JOIN "MEMBER" M ON TR."ID_MEMBER" = M."ID_MEMBER"
JOIN "JADWAL" J ON TR."ID_JADWAL" = J."ID_JADWAL"
JOIN "THEATER" T ON J."ID_THEATER" = T."ID_THEATER"
ORDER BY UMUR ASC;

SELECT 
    M."ID_MEMBER", 
    M."NAMA", 
    F."JUDUL"
FROM "TRANSAKSI" T
JOIN "MEMBER" M ON T."ID_MEMBER" = M."ID_MEMBER"
JOIN "JADWAL" J ON T."ID_JADWAL" = J."ID_JADWAL"
JOIN "FILM" F ON J."ID_FILM" = F."ID_FILM"
WHERE F."DURASI" >= 100 
  AND TO_NUMBER(SUBSTR(M."NO_HP", -1)) = 8;
  
SELECT 
    TR."ID_MEMBER", 
    J."ID_FILM", 
    J."ID_THEATER", 
    TH."HARGA" AS HARGA_ASLI,
    (TH."HARGA" * 0.3) AS HARGA_SETELAH_DISKON
FROM "TRANSAKSI" TR
JOIN "JADWAL" J ON TR."ID_JADWAL" = J."ID_JADWAL"
JOIN "FILM" F ON J."ID_FILM" = F."ID_FILM"
JOIN "THEATER" TH ON J."ID_THEATER" = TH."ID_THEATER"
WHERE F."JUDUL" = 'Keluarga Cemara'
AND TR."TANGGAL" >= TO_DATE('2019-06-01', 'YYYY-MM-DD');
CREATE TABLE film (
    id_film CHAR(5) CONSTRAINT film_pk PRIMARY KEY,
    judul VARCHAR2(50) NOT NULL,
    durasi NUMBER,
    tahun NUMBER(4),
    sinopsis VARCHAR2(500)
);

CREATE TABLE teater (
    nomor_teater VARCHAR2(10) CONSTRAINT teater_pk PRIMARY KEY,
    kelas VARCHAR2(20),
    harga NUMBER,
    kapasitas NUMBER
);

CREATE TABLE member (
    id_member CHAR(6) CONSTRAINT member_pk PRIMARY KEY,
    nama_member VARCHAR2(50) NOT NULL,
    no_hp VARCHAR2(15),
    email VARCHAR2(50),
    tgl_lahir DATE
);

-- Tabel Jadwal Tayang
CREATE TABLE jadwalTayang (
    id_jadwalTayang CHAR(6) CONSTRAINT jadwal_pk_new PRIMARY KEY,
    id_film CHAR(5),
    nomor_teater VARCHAR2(10),
    waktu_tayang TIMESTAMP,
    CONSTRAINT jdwl_fk_film FOREIGN KEY (id_film) REFERENCES film(id_film),
    CONSTRAINT jdwl_fk_ttr FOREIGN KEY (nomor_teater) REFERENCES teater(nomor_teater)
);

-- Tabel Orders (Transaksi Tiket)
CREATE TABLE orders (
    id_order CHAR(8) CONSTRAINT orders_pk_new PRIMARY KEY,
    id_member CHAR(6),
    id_jadwalTayang CHAR(6),
    tgl_transaksi DATE DEFAULT SYSDATE,
    jumlah_tiket NUMBER,
    total_bayar NUMBER,
    CONSTRAINT orders_fk_member FOREIGN KEY (id_member) REFERENCES member(id_member),
    CONSTRAINT orders_fk_jadwal FOREIGN KEY (id_jadwalTayang) REFERENCES jadwalTayang(id_jadwalTayang)
);


INSERT ALL
  INTO film VALUES ('F0001', 'Inception', 148, 2010, 'Pencuri memori melalui mimpi.')
  INTO film VALUES ('F0002', 'Interstellar', 169, 2014, 'Perjalanan antar galaksi.')
  INTO film VALUES ('F0003', 'The Dark Knight', 152, 2008, 'Batman vs Joker.')
  INTO film VALUES ('F0004', 'Tenet', 150, 2020, 'Manipulasi waktu.')
  INTO film VALUES ('F0005', 'Dunkirk', 106, 2017, 'Evakuasi perang dunia.')
SELECT * FROM dual;

INSERT ALL
  INTO teater VALUES ('T-01', 'Reguler', 35000, 100)
  INTO teater VALUES ('T-02', 'VIP', 60000, 50)
  INTO teater VALUES ('T-03', 'IMAX', 85000, 40)
SELECT * FROM dual;

INSERT ALL
  INTO member VALUES ('M00001', 'Andi', '08123', 'andi@mail.com', TO_DATE('1995-05-15', 'YYYY-MM-DD'))
  INTO member VALUES ('M00002', 'Siti', '08124', 'siti@mail.com', TO_DATE('2002-12-01', 'YYYY-MM-DD'))
  INTO member VALUES ('M00003', 'Budi', '08125', 'budi@mail.com', TO_DATE('2000-01-10', 'YYYY-MM-DD'))
  INTO member VALUES ('M00004', 'Dewi', '08126', 'dewi@mail.com', TO_DATE('2005-08-20', 'YYYY-MM-DD'))
SELECT * FROM dual;

INSERT ALL
  INTO jadwalTayang VALUES ('J00001', 'F0001', 'T-01', TO_TIMESTAMP('2026-03-30 14:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO jadwalTayang VALUES ('J00002', 'F0002', 'T-02', TO_TIMESTAMP('2026-03-30 19:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO jadwalTayang VALUES ('J00003', 'F0003', 'T-03', TO_TIMESTAMP('2026-03-31 13:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT * FROM dual;

INSERT ALL
  INTO orders VALUES ('ORD00001', 'M00001', 'J00001', SYSDATE, 2, 70000)
  INTO orders VALUES ('ORD00002', 'M00001', 'J00002', SYSDATE, 1, 60000)
  INTO orders VALUES ('ORD00003', 'M00001', 'J00003', SYSDATE, 1, 85000)
  INTO orders VALUES ('ORD00004', 'M00002', 'J00002', SYSDATE, 1, 60000)
  INTO orders VALUES ('ORD00005', 'M00003', 'J00001', SYSDATE, 1, 35000)
  INTO orders VALUES ('ORD00006', 'M00001', 'J00001', SYSDATE, 1, 35000)
  INTO orders VALUES ('ORD00007', 'M00001', 'J00002', SYSDATE, 1, 60000)
  INTO orders VALUES ('ORD00008', 'M00001', 'J00003', SYSDATE, 1, 85000)
  INTO orders VALUES ('ORD00009', 'M00001', 'J00001', SYSDATE, 1, 35000)
  INTO orders VALUES ('ORD00010', 'M00001', 'J00002', SYSDATE, 1, 60000)
  INTO orders VALUES ('ORD00011', 'M00004', 'J00002', SYSDATE, 1, 60000)
SELECT * FROM dual;
COMMIT;

SELECT COUNT(id_film) AS Jumlah_Film_Tersedia FROM film;

SELECT COUNT(DISTINCT id_film) AS Jumlah_Film_Sedang_Diputar 
FROM jadwalTayang;

SELECT id_member, COUNT(id_order) AS jumlah_menonton
FROM orders
GROUP BY id_member
HAVING COUNT(id_order) > 2;

SELECT m.id_member, 
       m.nama_member, 
       m.tgl_lahir, 
       COUNT(o.id_order) AS jumlah_film_ditonton
FROM member m
LEFT JOIN orders o ON m.id_member = o.id_member
WHERE m.tgl_lahir = (SELECT MAX(tgl_lahir) FROM member)
GROUP BY m.id_member, m.nama_member, m.tgl_lahir;

SELECT TO_CHAR(tgl_lahir, 'Month') AS Bulan, 
       COUNT(id_member) AS Jumlah_Member
FROM member
GROUP BY TO_CHAR(tgl_lahir, 'Month')
ORDER BY MIN(TO_CHAR(tgl_lahir, 'MM'));

SELECT id_film, 
       COUNT(id_jadwalTayang) AS total_jadwal
FROM jadwalTayang
GROUP BY id_film
ORDER BY total_jadwal DESC;
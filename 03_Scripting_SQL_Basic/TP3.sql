create table mahasiswa (
id number primary key,
nama varchar(50),
tempat_lahir varchar(50),
tanggal_lahir date,
nomor_hp number,
email varchar(50),
tinggi_badan number,
berat_badan number);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (1, 'Riyan Taufik', 'Bandung', TO_DATE('12-05-2004','DD-MM-YYYY'), 81234567890, 'riyan@gmail.com', 170, 65);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (2, 'Andi Saputra', 'Jakarta', TO_DATE('02-11-2003','DD-MM-YYYY'), 81345678901, 'andi@gmail.com', 168, 60);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (3, 'Budi Santoso', 'Semarang', TO_DATE('20-01-2004','DD-MM-YYYY'), 81456789012, 'budi@gmail.com', 172, 70);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (4, 'Citra Lestari', 'Yogyakarta', TO_DATE('15-07-2004','DD-MM-YYYY'), 81567890123, 'citra@gmail.com', 160, 50);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (5, 'Dewi Anggraini', 'Surabaya', TO_DATE('09-09-2003','DD-MM-YYYY'), 81678901234, 'dewi@gmail.com', 158, 48);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (6, 'Eko Prasetyo', 'Malang', TO_DATE('18-03-2004','DD-MM-YYYY'), 81789012345, 'eko@gmail.com', 175, 72);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (7, 'Fajar Hidayat', 'Bogor', TO_DATE('25-12-2003','DD-MM-YYYY'), 81890123456, 'fajar@gmail.com', 169, 64);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (8, 'Gita Permata', 'Bandung', TO_DATE('30-04-2004','DD-MM-YYYY'), 81901234567, 'gita@gmail.com', 162, 52);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (9, 'Hendra Wijaya', 'Medan', TO_DATE('11-06-2003','DD-MM-YYYY'), 82112345678, 'hendra@gmail.com', 174, 73);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (10, 'Indah Sari', 'Padang', TO_DATE('05-02-2004','DD-MM-YYYY'), 82223456789, 'indah@gmail.com', 159, 49);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (11, 'Joko Susilo', 'Solo', TO_DATE('14-08-2003','DD-MM-YYYY'), 82334567890, 'joko@gmail.com', 171, 68);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (12, 'Kiki Amelia', 'Depok', TO_DATE('21-10-2004','DD-MM-YYYY'), 82445678901, 'kiki@gmail.com', 163, 53);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (13, 'Lukman Hakim', 'Cirebon', TO_DATE('17-05-2003','DD-MM-YYYY'), 82556789012, 'lukman@gmail.com', 176, 75);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (14, 'Maya Putri', 'Bekasi', TO_DATE('01-12-2004','DD-MM-YYYY'), 82667890123, 'maya@gmail.com', 161, 51);

INSERT INTO mahasiswa (id, nama, tempat_lahir, tanggal_lahir, nomor_hp, email, tinggi_badan, berat_badan) 
VALUES (15, 'Nanda Pratama', 'Tangerang', TO_DATE('07-07-2003','DD-MM-YYYY'), 82778901234, 'nanda@gmail.com', 173, 69);

COMMIT;

select * from mahasiswa;

SELECT LOWER(nama) AS nama_lower FROM mahasiswa;
SELECT UPPER(nama) AS nama_upper FROM mahasiswa;
SELECT INITCAP(nama) AS nama_initcap FROM mahasiswa;
SELECT CONCAT(nama, ' - ') || tempat_lahir AS nama_dan_tempat FROM mahasiswa;
SELECT nama, LENGTH(nama) AS panjang_nama FROM mahasiswa;
SELECT nama, SUBSTR(nama,1,4) AS nama_awal FROM mahasiswa;
SELECT nama, SUBSTR(nama,-4) AS nama_akhir FROM mahasiswa;
SELECT LPAD(nama,15,'*') AS lpad_nama FROM mahasiswa;
SELECT RPAD(nama,15,'*') AS rpad_nama FROM mahasiswa;
SELECT 
    nama,
    '***' || nama AS nama_dengan_prefix,
    LTRIM('***' || nama, '*') AS nama_tanpa_kiri
FROM mahasiswa;
SELECT 
    nama,
    nama || '***' AS nama_dengan_suffix,
    RTRIM(nama || '***', '*') AS nama_tanpa_kanan
FROM mahasiswa;
SELECT nama, INSTR(nama,'a') AS posisi_a FROM mahasiswa;
SELECT REPLACE(nama,'Riyan','Ryan') AS nama_baru FROM mahasiswa;

-- format hari dd,yy
SELECT nama,
       TO_CHAR(tanggal_lahir,'DD') AS tanggal,
       TO_CHAR(tanggal_lahir,'DY') AS hari_singkat,
       TO_CHAR(tanggal_lahir,'DAY') AS hari_panjang
FROM mahasiswa;
-- format tahun, yyy,yy,rr
SELECT nama,
       TO_CHAR(tanggal_lahir,'YYYY') AS tahun_lengkap,
       TO_CHAR(tanggal_lahir,'YY') AS dua_digit_tahun,
       TO_CHAR(tanggal_lahir,'RR') AS tahun_rr
FROM mahasiswa;
-- format jam dan am/pm
SELECT SYSDATE AS waktu_sekarang,
       TO_CHAR(SYSDATE,'HH:MI:SS AM') AS jam_12,
       TO_CHAR(SYSDATE,'HH24:MI:SS') AS jam_24
FROM dual;
-- menambah bulan ke tanggal
SELECT nama, tanggal_lahir, ADD_MONTHS(tanggal_lahir,6) AS tambah_6_bulan
FROM mahasiswa;
-- tanggal dan waktu sekarang
SELECT nama, SYSDATE AS tanggal_sekarang FROM mahasiswa;
-- hari terakhir di bulan tertentu
SELECT nama, tanggal_lahir, LAST_DAY(tanggal_lahir) AS hari_terakhir_bulan
FROM mahasiswa;
-- hari berikutnya tertentu
SELECT nama, tanggal_lahir, NEXT_DAY(tanggal_lahir,'MONDAY') AS senin_berikutnya
FROM mahasiswa;
-- selisih bulan antara 2 tanggal
SELECT 
    nama,
    tanggal_lahir,
    MONTHS_BETWEEN(SYSDATE, tanggal_lahir) AS selisih_bulan,       -- dengan desimal
    ROUND(MONTHS_BETWEEN(SYSDATE, tanggal_lahir)) AS selisih_bulan_bulat  -- dibulatkan
FROM mahasiswa;
--bulatkan tanggal ke bulan atau tahun
SELECT nama, tanggal_lahir,
       ROUND(tanggal_lahir,'MONTH') AS bulat_bulan,
       ROUND(tanggal_lahir,'YEAR') AS bulat_tahun
FROM mahasiswa;
--ubah string menjadi angka
SELECT TO_NUMBER('150') + tinggi_badan AS contoh_to_number
FROM mahasiswa;
--ubah tanggal jadi string
SELECT 
    nama,
    tanggal_lahir,
    TO_CHAR(tanggal_lahir,'DD-MM-YYYY') AS tgl_lahir_string,
    TO_CHAR(tanggal_lahir,'Day, DD Month YYYY') AS tgl_lahir_readable
FROM mahasiswa;
--ubah angka jadi string
SELECT 
    nama,
    tinggi_badan,
    berat_badan,
    TO_CHAR(tinggi_badan) AS tinggi_string,
    TO_CHAR(tinggi_badan,'999') AS tinggi_string_format,
    TO_CHAR(berat_badan,'999.9') AS berat_string_format
FROM mahasiswa;
--ubah string jadi tanggal
SELECT TO_DATE(tanggal_lahir,'DD-MM-YYYY') AS contoh_to_date
FROM mahasiswa;
--nilai mutlak
SELECT 
    nama,
    berat_badan AS asli,
    ABS(berat_badan - 60) AS nilai_mutlak_selisih_60
FROM mahasiswa;
--sisa pembagian
SELECT 
    nama,
    tinggi_badan,
    MOD(tinggi_badan,5) AS sisa_bagi_5
FROM mahasiswa;
--pembulatan kebawah
SELECT 
    nama,
    berat_badan / 3 AS berat_per_3, 
    FLOOR(berat_badan / 3) AS floor_berat
FROM mahasiswa;
--pembulatan keatas
SELECT 
    nama,
    berat_badan / 3 AS berat_per_3,
    CEIL(berat_badan / 3) AS ceil_berat
FROM mahasiswa;
--pangkat
SELECT 
    nama,
    tinggi_badan,
    POWER(tinggi_badan,2) AS tinggi_pangkat_2
FROM mahasiswa;
--pembulatan angka
SELECT 
    nama,
    berat_badan / 3 AS berat_per_3,
    ROUND(berat_badan / 3) AS bulat_terdekat,
    ROUND(berat_badan / 3,2) AS bulat_2_desimal
FROM mahasiswa;


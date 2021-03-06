-- Buat Database baru dengan nama staff
CREATE DATABASE staff;

-- Buat Table data_staff dengan desain
CREATE TABLE data_staff(
nik INT PRIMARY KEY,
nama VARCHAR(50),
alamat VARCHAR(200),
handphone VARCHAR(15)
);

-- Masukkan data ke dalam table data_staff sesuai dengan table diatas
INSERT INTO data_staff
VALUES
(35728, 'PUTRI', 'SURABAYA', '0812159405'),
(35729, 'PUTRA', 'SIDOARJO', '0813256405'),
(35730, 'BUDI', 'GRESIK', '0813256143');

-- Tambahkan kolom baru pada table data_staff yaitu joindate sekaligus masukan 1 data kedalam table data_staff
ALTER TABLE data_staff
ADD joindate DATE;
 
INSERT INTO data_staff
VALUES
(35731, 'AAN', 'PASURUAN', '0811234405', '2019-02-10'),
(35732, 'ANGGI', 'JAKARTA', '0815676405', '2020-03-10'),
(35733, 'ANGGA', 'BANDUNG', '0813456143', '2020-04-10');

-- Tampilkan 2 data SQL kalian sekarang
SELECT TOP 2 * FROM data_staff;

-- Tampilkan 3 data SQL kalian sekarang
SELECT TOP 3 * FROM data_staff;

-- Buat Table baru staffoutsource dengan isi yang sama seperti data_staff
CREATE TABLE staff_outsource(
	nik INT PRIMARY KEY,
	nama VARCHAR(50),
	alamat VARCHAR(200),
	handphone VARCHAR(15)
);

INSERT INTO staff_outsource SELECT * FROM data_staff;

-- Masukkan 10 data baru ke table staffoutsource
INSERT INTO staff_outsource
VALUES
(35734, 'ABC', 'PASURUAN', '0811234456', '2019-02-10'),
(35735, 'DEF', 'JAKARTA', '0815676412', '2020-03-10'),
(35736, 'GHI', 'BANDUNG', '0813456134', '2020-04-10'),
(35737, 'JKL', 'PASURUAN', '0811234478', '2019-01-10'),
(35738, 'LMN', 'JAKARTA', '0815676490', '2020-06-10'),
(35739, 'OPQ', 'PASURUAN', '0811231205', '2019-07-10'),
(35740, 'RST', 'JAKARTA', '0815673205', '2020-01-10'),
(35741, 'UVW', 'PASURUAN', '0811234505', '2019-02-10'),
(35742, 'YXZ', 'JAKARTA', '0815676675', '2020-05-10'),
(35743, 'CBA', 'PASURUAN', '0811238905', '2019-01-10'),
(35744, 'FED', 'JAKARTA', '0815670905', '2020-02-10');

-- Tampilkan data pada 2 Table yang sudah kalian buat dengan joindate yang sama
SELECT * 
FROM 
    staff_outsource as a 
JOIN 
    data_staff  as b 
ON 
		a.nik = b.nik
WHERE 
		a.joindate > '2020-02-10';

SELECT * FROM data_staff as a JOIN staff_outsource as b ON a.nik = b.nik;

-- Tampilkan seluruh data sebelah kanan yang sama pada table staff_outsource
SELECT * FROM data_staff as a RIGHT JOIN staff_outsource as b ON a.nik = b.nik;
-- Tampilkan seluruh data staff sebelah kiri yang punya nilai tidak sama akan bernilai null
SELECT * FROM data_staff as a LEFT JOIN staff_outsource as b ON a.nik = b.nik;
-- Tampilkan seluruh data antara 2 tabel baik itu tidak punya kesamaan dan bernilai null
SELECT * FROM data_staff as a FULL OUTER JOIN staff_outsource as b ON a.nik = b.nik;
USE latihan1;

CREATE TABLE Mahasiswa (
	ID INT PRIMARY KEY,
	NIM INT,
	Nama VARCHAR(100),
	Jurusan VARCHAR(50),
	TanggalLahir DATE
	);

INSERT INTO Mahasiswa (ID, NIM, Nama, Jurusan, TanggalLahir)
VALUES 
	(1, 233040038, 'Nada', 'Informatika', '2005-04-11'),
	(2, 233040051, 'Haifa', 'Informatika', '2005-04-05'),
	(3, 233040071, 'Reza', 'Informatika', '2004-12-12'),
	(4, 233040074, 'Nurfatimah', 'Informatika', '2004-03-24'),
	(5, 233040042, 'Chalida', 'Informatika', '2005-05-29'),
	(6, 233040156, 'Faizal', 'Informatika', '2004-12-17')
	;

SELECT *
FROM Mahasiswa;
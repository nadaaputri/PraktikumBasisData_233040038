CREATE TABLE Jurusan (
id BIGINT PRIMARY KEY,
nama_jurusan BIGINT
);


CREATE TABLE Dosen_Wali (
id BIGINT PRIMARY KEY,
NIP BIGINT,
nama VARCHAR(255),
tanggal_lahir DATE,
alamat VARCHAR(255),
no_hp INT
);

CREATE TABLE Mahasiswa (
id BIGINT PRIMARY KEY,
NPM BIGINT,
nama VARCHAR(255),
tanggal_lahir DATE,
alamat VARCHAR(255),
no_hp INT,
jurusan_id BIGINT
FOREIGN KEY (jurusan_id) REFERENCES Jurusan(id),
dosen_wali_id BIGINT
FOREIGN KEY (dosen_wali_id) REFERENCES Dosen_Wali(id)
);

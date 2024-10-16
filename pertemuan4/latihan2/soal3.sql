SELECT [nama_mahasiswa], COUNT(*) AS jumlah_total_mahasiswa_informatika
FROM [dbo].[mahasiswa]
WHERE [jurusan] = 'Teknik Informatika';
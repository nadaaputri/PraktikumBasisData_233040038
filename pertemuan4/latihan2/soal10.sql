<<<<<<< HEAD
SELECT *
FROM [dbo].[mahasiswa]
WHERE [mahasiswa_id] IN (
	SELECT [mahasiswa_id]
	FROM [dbo].[dpp_mahasiswa]
	WHERE [status_pembayaran] = 'Lunas'
=======
SELECT *
FROM [dbo].[mahasiswa]
WHERE [mahasiswa_id] IN (
	SELECT [mahasiswa_id]
	FROM [dbo].[dpp_mahasiswa]
	WHERE [status_pembayaran] = 'Lunas'
>>>>>>> 2cdedf18f7d35fdd7c69d01261599a6ff37a54d8
	);
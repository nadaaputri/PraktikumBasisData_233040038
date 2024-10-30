<<<<<<< HEAD
SELECT *
FROM HR.Employees;

SELECT firstname, lastname
FROM HR.Employees;

SELECT DISTINCT *
FROM HR.Employees;

SELECT country, COUNT(*) AS total
FROM HR.Employees
GROUP BY country;

SELECT firstname, COUNT(*) total
FROM HR.Employees
GROUP BY firstname;

SELECT TOP(5) city
FROM HR.Employees;

SELECT birthdate
FROM HR.Employees
WHERE hiredate
BETWEEN '1958-12-08' AND '2002-04-01';

SELECT region, city, country
FROM HR.Employees
WHERE hiredate
BETWEEN '1965-08-30' AND '2003-10-17';

SELECT *
FROM HR.Employees
WHERE firstname LIKE '%A%';
=======
SELECT *
FROM HR.Employees;

SELECT firstname, lastname
FROM HR.Employees;

SELECT DISTINCT *
FROM HR.Employees;

SELECT country, COUNT(*) AS total
FROM HR.Employees
GROUP BY country;

SELECT firstname, COUNT(*) total
FROM HR.Employees
GROUP BY firstname;

SELECT TOP(5) city
FROM HR.Employees;

SELECT birthdate
FROM HR.Employees
WHERE hiredate
BETWEEN '1958-12-08' AND '2002-04-01';

SELECT region, city, country
FROM HR.Employees
WHERE hiredate
BETWEEN '1965-08-30' AND '2003-10-17';

SELECT *
FROM HR.Employees
WHERE firstname LIKE '%A%';
>>>>>>> 2cdedf18f7d35fdd7c69d01261599a6ff37a54d8

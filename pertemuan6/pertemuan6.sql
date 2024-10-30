

CREATE TABLE Departements (
	DepartementsID INT IDENTITY (1,1) PRIMARY KEY,
	DepartementsName VARCHAR(50) NOT NULL
)

CREATE TABLE Projects (
	ProjectsID INT IDENTITY (1,1) PRIMARY KEY,
	ProjectName VARCHAR(50) NOT NULL,
	DepartementsID INT
	FOREIGN KEY (DepartementsID) REFERENCES Departements(DepartementsID)
	ON UPDATE CASCADE ON DELETE CASCADE
)

CREATE TABLE Employee (
	EmployeeID INT IDENTITY (1,1) PRIMARY KEY,
	Name VARCHAR(50) NOT NULL,
	DepartementsID INT
	FOREIGN KEY (DepartementsID) REFERENCES Departements(DepartementsID)
	ON UPDATE CASCADE ON DELETE CASCADE,
	ManagerID INT
	FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
)

CREATE TABLE Salaries (
	EmployeeID INT
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
	ON UPDATE CASCADE ON DELETE CASCADE,
	Salaries DECIMAL(10,2) NOT NULL
)

INSERT INTO [dbo].[Departements] ([DepartementsName])
VALUES 
	('human resources'),
	('finance'),
	('IT')

INSERT INTO [dbo].[Employee] ([Name],[DepartementsID],[ManagerID])
VALUES 
	('Nada', 1, NULL),--managerHR
	('Haifa', 1, 1),
	('Ilona', 1, 1),
	('Andhika', 1, 1),
	('Adriansyah', 1, 1),
	('Nurfatimah', 2, NULL),
	('Chalida', 2, 6),
	('Sufi', 2, 6),
	('Kresna', 2, 6),
	('Fauzi', 2, 6),
	('Reza', 3, NULL),
	('Hikmat', 3, 11),
	('Riyadu', 3, 11),
	('Riki', 3, 11),
	('Rivan', 3, 11)

INSERT INTO [dbo].[Projects] ([ProjectName], [DepartementsID])
VALUES 
	('Project1', 1),
	('Project2', 1),
	('Project3', 1),
	('Project4', 1),
	('Project1', 2),
	('Project2', 2),
	('Project3', 2),
	('Project1', 3),
	('Project2', 3),
	('Project3', 3)

INSERT INTO [dbo].[Salaries] ([EmployeeID], [Salaries])
VALUES 
	(1, 1.513),
	(2, 1.23),
	(3, 1.76),
	(4, 1.547),
	(5, 1.298),
	(6, 1.56),
	(7, 1.356),
	(8, 1.987),
	(9, 1.36),
	(10, 1.64),
	(11, 1.643),
	(12, 1.271),
	(13, 1.00),
	(14, 1.5650),
	(15, 1.758)

SELECT * FROM [dbo].[Departements]
SELECT * FROM [dbo].[Employee]
SELECT * FROM [dbo].[Salaries]
SELECT * FROM [dbo].[Projects]
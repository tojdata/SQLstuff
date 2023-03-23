--CREATE TABLE EmployeeDemographics
--(EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--)

--CREATE TABLE EmployeeSalary
--(EmployeeID int,
--JobTitle varchar(50),
--Salary int
--)

--INSERT INTO EmployeeDemographics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')


--Insert Into EmployeeSalary VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)

--SELECT COUNT(LastName)
--FROM EmployeeDemographics

--oops I inserted way too many rows, and want to start over with just the 9 important rows

--DELETE FROM EmployeeDemographics

--INSERT INTO EmployeeDemographics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')

--SELECT MAX(Salary)
--FROM EmployeeSalary

--SELECT MIN(Salary)
--FROM EmployeeSalary

--SELECT AVG(Salary)
--FROM EmployeeSalary

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%o%' % is a wildcard

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName IN ('Jim', 'Michael')

--group bys and order bys

--SELECT DISTINCT(Gender), COUNT(Gender)
--FROM EmployeeDemographics
--GROUP BY Gender

--SELECT Gender, Age, COUNT(Gender)
--FROM EmployeeDemographics
--GROUP BY Gender, Age

--SELECT Gender, Count(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender
--ORDER BY Gender

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age DESC

--that is the basics of sql tutorial done

--now i will begin the intermediate section


--SELECT *
--FROM EmployeeDemographics
--RIGHT OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


--SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM EmployeeDemographics
--RIGHT OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT JobTitle, Salary
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE JobTitle = 'Salesman'
--ORDER BY Salary


--playing with unions
--SELECT EmployeeID, FirstName, Age
--FROM EmployeeDemographics
--UNION ALL
--SELECT EmployeeID, JobTitle, Salary
--FROM EmployeeSalary

--playing with case
--SELECT LastName, FirstName, Age,
--CASE
--	WHEN Age >30 THEN 'OLD'
--	ELSE 'Young'
--END
--FROM EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER BY Age

--still on cases
--SELECT LastName, FirstName, Age,
--CASE
--	WHEN Age >30 THEN 'OLD'
--	WHEN Age = 38 THEN 'old man stan'
--	ELSE 'Young'
--END
--FROM EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER BY Age

----having clause refresher
--SELECT JobTitle, AVG(Salary)
--FROM EmployeeDemographics
--JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
----having relies on group by so i cant put it above
--GROUP BY JobTitle
----HAVING AVG(Salary) > 45000
--ORDER BY AVG(Salary)

--inserting some more rows
INSERT INTO EmployeeDemographics VALUES
(1010, 'Jonny', NULL, 48, 'Male'),
(1011, 'Dilbert', NULL, 52, 'Male'),
(1012, 'Sarah', NULL, 24, 'Female'),
(1014, 'Sally', NULL, 36, 'Female'),
(1015, 'Squidward', 'Tentacles', 40, 'Male')


INSERT INTO EmployeeSalary VALUES
(1010, 'Receptionist', 33333),
(1011, 'Manager', 44444),
(1012, 'Intern', 22222 ),
(1014, 'HR', 45454),
(1015, 'Mascot', 99999)

--playing with SET's
SELECT *
FROM EmployeeSalary

--INSERT INTO 

--UPDATE EmployeeDemographics

--SET EmployeeID =

--use F5 to execute the commands, or hit 'execute'
--CREAT <database name> - creates the dB
CREATE DATABASE ClassDB;

--USE <database name> - scopes future queries
USE ClassDB;

--CREATE TABLE <table name> - creates table

CREATE TABLE StudentTable
(
	StudentID	INT		Identity	(100,10)	Not Null PRIMARY KEY,
	[Name]		CHAR	(30)		Not Null,
	[Address]	CHAR	(30)		Not Null,
	City		CHAR	(30)		Not Null,
	[State]		CHAR	(2)			Not Null,
	Zip			INT					Not Null
);


--INSERT INTO <table name>
--VALUES - inserts data into the named table

SELECT * FROM StudentTable;

INSERT INTO StudentTable (Name, Address, City, State, Zip)
VALUES	('Jerry', '222 Way Not to Go St', 'New York City', 'NY', 66502),
		('Elaine', '111 Way to Go St', 'New York City', 'NY', 66502),
		('Kramer', '232 Way Not to Go St', 'New York City', 'NY', 66502),
		('George', '555 Way to Go St', 'New York City', 'NY', 66502),
		('Newman', '454 Which Way St', 'New York City', 'NY', 66502),
		('Peterman', '8877 Which Way But Here St', 'Rock Hill', 'SC', 29734);

--ALTER TABLE <TableName>
	--ADD column criteria nullornot

ALTER TABLE StudentTable
	ADD	Country			Char(20)	Null,
		HomeNumber		Int			Null,
		MobileNumber	Int,
		DOB				Date;

SELECT * FROM StudentTable;

ALTER TABLE StudentTable
	Alter COLUMN Zip varchar (10);

--you can use ALTER TABLE to remove columns!

ALTER TABLE StudentTable
	DROP COLUMN City, State, Zip, DOB;

--you can even use the ALTER command to change the name of the dB

ALTER DATABASE ClassDB
	MODIFY NAME = StudentDB;

--DELETE and TRUNCATE

DELETE FROM StudentTable2
	WHERE Name = 'Jerry';

--this will affect all records where the name is 'Jerry'
--DELETE keeps the primary key

SELECT * FROM StudentTable2;

--TRUNCATE deletes everything, AND resets the primary key

TRUNCATE TABLE StudentTable2;

--DROP TABLE <TableName> - gets rid of table
--or DROP DATABASE

DROP TABLE StudentTable;

--USE <master> will switch databases 
USE master;

DROP DATABASE StudentDB;

SELECT * FROM StudentTable;

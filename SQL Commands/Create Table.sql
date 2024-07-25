-- SQL Commands

/*
DDL (DATA DEFINATION LANGUAGE)
DML (DATA MANIPULATION LANGUAGE)
DCL (DATA CONTROL LANGUAGE)
DQL (DATA QUERY LANGUAGE)
TCL (Transaction Control Language)
*/

-- DDL (DATA DEFINATION LANGAUGE)

--Create
--Alter
--Drop
--Truncate

--Create Statement is used to create Tables 

--Write a SQL statement to create a simple table movies
--which should include columns movie_id, movie_name, movie_type and movie_rating.


USE master
GO
IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name = 'DEMO'
)
Create DATABASE DEMO
ELSE
print 'EXISTS ALRADY'

END


CREATE DATABASE DEMO
GO
Drop database TEST

Create Table #Movies
(
Movie_id Int,
Movie_name Varchar(100),
Movie_Type Varchar(250),
Movie_Rating Int
)



--Write a SQL statement to create a simple table movies which should include 
--columns movie_id, movie_name, movie_type and movie_rating only if it does not exist.
IF OBJECT_ID(N'#wr', N'U') IS NULL

CREATE TABLE #wr (
    c1 int,
    c2 varchar(10)
    );
GO



SELECT * FROM #wr


	IF NOT EXISTS(SELECT * FROM Customers)
	BEGIN
	CREATE TABLE Customers
	(
	ID Varchar(20)
	,Name VARCHAR(100)
	);
	END
	ELSE 
	Begin
	Print 'Create table please'

END



IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NULL
BEGIN



--Write a SQL statement to create a simple table movies 
--which should include columns movie_id, movie_name, movie_type and movie_rating only
--if it does not exist. The movie_id should be an unique indentifier of the table. 
--It should store an auto incremented value. Each field should not be null too.

CREATE TABLE #MOVIES
(
Movie_id Int iDENTITY PRIMARY KEY NOT NULL,
Movie_name Varchar(100)		,
Movie_Type Varchar(250),
Movie_Rating DECIMAL(10,2)
)

select * from #movies

SELECT OBJECT_ID('tempdb..#movies');



SELECT OBJECT_ID('t1');


IF Not EXISTS (SELECT * FROM sys.tables WHERE name = '#movissess')
BEGIN
    CREATE TABLE #movissess (
        movie_id INT IDENTITY(1,1) PRIMARY KEY,
        movie_name VARCHAR(255) NOT NULL,
        movie_type VARCHAR(100) NOT NULL,
        movie_rating DECIMAL(3,1) NOT NULL
    );
END;


select * from #movissess




--Write a SQL statement to create a simple table movies which should include columns 
--movie_id, movie_name, movie_type and movie_rating only if it does not exist.
--The combination of movie_id and movie_name should be an unique indentifier of the table.


IF Not EXISTS (SELECT * FROM sys.tables WHERE name = '#movisss')
BEGIN
    CREATE TABLE #movisss (
        movie_id INT IDENTITY(1,1) PRIMARY KEY,
        movie_name VARCHAR(255) unique NOT NULL,
        movie_type VARCHAR(100) NOT NULL,
        movie_rating DECIMAL(3,1) NOT NULL
    );
END;


--Write a SQL statement to create the structure of a table movies_v2 
--which will be similar to the movies table.

Select * into #data from #movisss

Select * from #data


CREATE TABLE IF NOT EXISTS movies_v2
AS SELECT * FROM movies;
 
 IF Object_id (Customers)is null


	

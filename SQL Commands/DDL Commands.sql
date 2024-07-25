--- DDL COMMANDS (Data Definition Language)

/*
The DDL commands in SQL are:

* CREATE: To add a new object to the database.

* ALTER: To change the structure of the database.

* DROP: To remove an existing object from the database.

* TRUNCATE: To remove all records from a table, including the space allocated to store this data.

*/

-------------------------------------------------------------------------------------
-- Create command used to create database 
-------------------------------------------------------------------------------------

Create Database RND

USE RND;  -- Switch to the database where you want to create the table

-- Create the table

CREATE TABLE Sql_Prac
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(10)
);

-- Another way to write create statement

--Create the table if it doesn't exist
--If object id is null then it will create new table Sql_prac 


IF OBJECT_ID('Sql_Prac','U') IS NULL
BEGIN
    CREATE TABLE Sql_Prac
    (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Name VARCHAR(10)
    );
    PRINT 'Table created successfully.';
END
ELSE
BEGIN
    PRINT 'Table already exists.';
END


-- Print status message
IF OBJECT_ID('Sql_Prac','U') IS not NULL
    PRINT 'Table created successfully.';
ELSE
    PRINT 'Table already exists.';

	
-------------------------------------------------------------------------------------
-- ALTER:: To change the structure of the database.
-------------------------------------------------------------------------------------
-- To rename database name

alter database RND1 modify name=Prac

Alter Database RND modify name=RNDSQL

exec sp_renamedb 'Prac','RND'

Select * from sys.databases order by 5 desc

-- To rename table name

Exec sp_rename 'Sql_Prac','Prac'

--ALTER TABLE - ADD Column

Alter table prac add age int

Select * from prac

--ALTER TABLE - ALTER/MODIFY DATATYPE

Alter table prac alter column age bigint
Sp_help prac

--ALTER TABLE - RENAME COLUMN

EXEC sp_rename 'prac.age', 'Ages', 'COLUMN'
Sp_help prac


	
-------------------------------------------------------------------------------------
-- DROP:: To remove an existing object from the database.
-------------------------------------------------------------------------------------
Drop database RND

Drop Database If exists RND

--Drop column

Alter table Prac Drop column ages 
Select * from prac

--* DROP: To remove an existing object from the database.

-- Dropping table
Drop Table Prac

-- Check if the table exists and drop it if it does

IF OBJECT_ID('RND1','U') IS NOT NULL
BEGIN
    DROP TABLE RND1;
END

-- SEconday way

-- Drop the table if it exists

DROP TABLE IF EXISTS Sql_Prac;


-- Dropping column

Alter table Prac
Drop column age

-- Drop Constraint

Alter table prac
Drop Constraint  PK__Sql_Prac__3214EC070F5A2636

-- Drop database

DROP DATABASE testDB;

-- Drop view

DROP VIEW Demo;

------------------------------------------------------------------------------------------------
--TRUNCATE: To remove all records from a table, including the space allocated to store this data.
-------------------------------------------------------------------------------------------------

-- Create Test Table

CREATE TABLE #TruncateTest (ID INT)
INSERT INTO #TruncateTest (ID)
SELECT 1
UNION ALL
SELECT 2
UNION ALL
SELECT 3
GO
-- Check the data before truncate
SELECT * FROM #TruncateTest
GO
-- Begin Transaction
BEGIN TRAN
-- Truncate Table
TRUNCATE TABLE #TruncateTest
GO
-- Check the data after truncate
SELECT * FROM #TruncateTest
GO
-- Rollback Transaction
ROLLBACK TRAN
GO
-- Check the data after Rollback
SELECT * FROM #TruncateTest
GO
-- Clean up
DROP TABLE #TruncateTest
GO



--Refer for More Explaination

---https://www.javatpoint.com/sql-server-truncate-table
--https://learn.microsoft.com/en-us/sql/t-sql/statements/truncate-table-transact-sql?view=sql-server-ver16

-------------------------------------------------------	DML START-------------------------------------------------
--DML(Data Manipulation Language
-------------------------------------------------------------------------------------------
--INSERT  (Insert data into a table	)Statement
-------------------------------------------------------------------------------------------

USE RNDSQL

IF OBJECT_ID('Student','U') IS NOT NULL
BEGIN
    DROP TABLE Student;
END

-- Create the table if it doesn't exist
--If object id is null then it will create new table Sql_prac 

IF OBJECT_ID('Student','U') IS NULL
BEGIN
   CREATE TABLE Student(    
    Id INT IDENTITY PRIMARY KEY,    
    Name VARCHAR(65) NOT NULL,    
    Gender VARCHAR(20),    
    Age INT,    
    Marks INT   
 )   
    PRINT 'Table created successfully.';
END
ELSE
BEGIN
    PRINT 'Table already exists.';
END

-- Inserting data

INSERT INTO Student (Name, Gender, Age, Marks)     
VALUES ('Peter Huges', 'Male', 32, 450);  

INSERT INTO Student     
VALUES ('Johnny Paul', 'Male', 35, 470);  

--Multiple insertion

INSERT INTO Student     
VALUES ('Jolly Evans', 'Female', 28, 475),  
('Alan Simmons', 'Male', 32, 405),  
('Laura Bennet', 'Female', 30, 435);  


Select * from  Student

INSERT INTO Student (Name, Gender)     
VALUES ('Diego Bennet', 'Male');  

Select * into #Studentinfo from Student

Truncate table #Studentinfo

Insert into #Studentinfo
select Name, Gender, Age, Marks from Student


Insert into Student
Select 'Laura Bennet', 'Female', 30, 435
Union
Select 'Bennet', 'male', 28, 335
Union 
Select 'Bob', 'male', 25, 485


 -------------------------------------------------------------------------------------
--UPDATE Statement
 -------------------------------------------------------------------------------------

 UPDATE student
 set Name='Bob' 
 where Id='1'

-- Proper way to write

UPDATE a
SET a.Name = 'Bob'
FROM student a
WHERE a.Name = 'Alice';


Update a
set a.Name='Alice'
from student a
where a.id=1


-- Always use begin tran while updating 

Begin Tran
 
UPDATE a
SET a.Name = 'a'
FROM student a
WHERE a.Name = 'Bob';

Select * from student

Rollback

Commit

--- MUltiple updates

Update a
set a.age=24,marks=387
from Student a
where a.id=2

 -- UPDATE
 
Begin Tran
 
 UPDATE [Student]  
   SET [Name] = 'Peter Huges'  
      ,[Gender] = 'Male'  
      ,[Age] = 26  
      ,[Marks] = 478  
 WHERE [Id] = 1  

 COMMIT

 -----------------------------------------------------------------------------------------------
 -- DELETE SQL DELETE statement is used to delete rows from a table
 --------------------------------------------------------------------------------------------------
 DELETE FROM [Student] WHERE ID=2; 
 

 Select * from student

 Begin tran
 DELETE FROM [Student]; 
 
 rollback 
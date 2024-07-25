use practice



CREATE SCHEMA production;
go

CREATE SCHEMA sales;
go

-- create tables
CREATE TABLE production.categories (
	category_id INT IDENTITY (1, 1) PRIMARY KEY,
	category_name VARCHAR (255) NOT NULL
);

CREATE TABLE production.brands (
	brand_id INT IDENTITY (1, 1) PRIMARY KEY,
	brand_name VARCHAR (255) NOT NULL
);


SET IDENTITY_INSERT production.brands ON;  


INSERT INTO production.brands(brand_id,brand_name) VALUES(1,'Electra')
INSERT INTO production.brands(brand_id,brand_name) VALUES(2,'Haro')
INSERT INTO production.brands(brand_id,brand_name) VALUES(3,'Heller')
INSERT INTO production.brands(brand_id,brand_name) VALUES(4,'Pure Cycles')
INSERT INTO production.brands(brand_id,brand_name) VALUES(5,'Ritchey')
INSERT INTO production.brands(brand_id,brand_name) VALUES(6,'Strider')
INSERT INTO production.brands(brand_id,brand_name) VALUES(7,'Sun Bicycles')
INSERT INTO production.brands(brand_id,brand_name) VALUES(8,'Surly')
INSERT INTO production.brands(brand_id,brand_name) VALUES(9,'Trek')

SET IDENTITY_INSERT production.brands OFF;  

SET IDENTITY_INSERT production.categories ON;  
INSERT INTO production.categories(category_id,category_name) VALUES(1,'Children Bicycles')
INSERT INTO production.categories(category_id,category_name) VALUES(2,'Comfort Bicycles')
INSERT INTO production.categories(category_id,category_name) VALUES(3,'Cruisers Bicycles')
INSERT INTO production.categories(category_id,category_name) VALUES(4,'Cyclocross Bicycles')
INSERT INTO production.categories(category_id,category_name) VALUES(5,'Electric Bikes')
INSERT INTO production.categories(category_id,category_name) VALUES(6,'Mountain Bikes')
INSERT INTO production.categories(category_id,category_name) VALUES(7,'Road Bikes')



select * from production.brands

select * from production.categories




use Practice

select * from Tblperson



CREATE TABLE TblPerson
(
PK_key INT Identity(1,1) PRIMARY KEY,
ID INT,
Name VARCHAR(20),
EMAIL Varchar(20),
GenderID int
)


INSERT INTO TBLPERSON  (ID,NAME,EMAIL,GenderID)
select 1,'JAY','JAY@GMAIL.COM',1
UNION ALL
select 2,'JAYSHRI','JAYshri@GMAIL.COM',2
UNION ALL
select 3,'yogesh','yogesh@GMAIL.COM',1
UNION ALL
SELECT 4,'shubra','Shubra@GMAIL.COM',2

select * from tblperson

delete from tblperson 
where ID=1

truncate table tblperson

insert into Mas_Employee ( Name, Salary, DeptId )   
select 'Jaipal',18200,1     union all  
select 'Jayanth',14200,2 union all  
select 'Sreeshanth',12999,2 union all  
select 'Tejaswini',16800,1

--(3,'yogesh','yogesh@GMAIL.COM',2)
--(4,'shubra','Shubra@GMAIL.COM',1)

CREATE TABLE TblGender
(
ID int Primary key,
Gender Varchar(10)
)

select * from tblgender


alter table tblperson 
add constraint FK_Gender 
foreign key(genderid) references  tblgender(id)

insert into Tblgender values(1,'MALE')
insert into Tblgender values(2,'FEMALE')

ALter table TBlgender
add Gen_id int


update TblGender
set gen_id=id

alter table tblgender
drop constraint PK__TblGende__3214EC27ABB1C572


-- DISITNCT

 CREATE DATABASE #StudentsExamDemo;
  GO

  use #StudentsExamDemo;
  GO


-- Create a Student table
DROP TABLE IF EXISTS Student
   CREATE TABLE #StudentsExamDemo..[Student] (
      [StudentId] INT           IDENTITY (1, 1) NOT NULL,
      [Name]      VARCHAR (50)  NOT NULL,
      [Detail]    VARCHAR (200) NULL
  );

   SET IDENTITY_INSERT [dbo].[Student] ON
  INSERT INTO #StudentsExamDemo..[Student] ([StudentId], [Name], [Detail])
 select 1, N'Atif', N'This is Atif' UNION ALL
 select 2, N'Atif', N'This is Atif' UNION ALL
 select 3, N'Sarah', N'This is Sarah'
  SET IDENTITY_INSERT [dbo].[Student] OFF


   SELECT s.StudentId,s.Name,S.Detail FROM #StudentsExamDemo..Student s

   
   
  SELECT ALL s.StudentId,s.Name,S.Detail FROM #StudentsExamDemo..Student s
 
 select  ([Name]) from #StudentsExamDemo..Student

 select distinct ([Name]) from #StudentsExamDemo..Student

SELECT StudentId,Distinct(Name) FROM #StudentsExamDemo..Student


  SELECT Name, Detail FROM #StudentsExamDemo..Student
  
  -- Counting all rows 
  SELECT (COUNT((Name))) as Total_Names FROM #StudentsExamDemo..Student
  
  -- Counting rows with unique/distinct names
  SELECT (COUNT(DISTINCT(Name))) as Total_Unique_Names FROM #StudentsExamDemo..Student
 


 select count(name) as CNT from #StudentsExamDemo..Student

 select count(distinct name)as n from #StudentsExamDemo..Student



 UPDATE  #StudentsExamDemo..Student
  SET Name='Adil', Detail='This is Adil'
  WHERE StudentId=2
  
  -- View Student table
  SELECT [StudentId],[Name],[Detail] from #StudentsExamDemo..Student
 
  SELECT * from #StudentsExamDemo..Student
 
Begin tRan
Delete from #StudentsExamDemo..Student

COMMIT
ROLLBACK


Declare @Listwod Table (DYNumber int,Dayabb varchar(40),weekname varchar(30))

Insert into @listwod values
(1,'Mon','Monday'),
(2,'Tue','Tueday'),
(3,'Wed','Wednesday'),
(4,'THU','Thurday'),
(5,'Fri','Friday')



select * from @Listwod

DECLARE @ListOWeekDays TABLE(DyNumber INT,DayAbb VARCHAR(40) , WeekName VARCHAR(40))
 
INSERT INTO @ListOWeekDays
VALUES 
(1,'Mon','Monday')  ,
(2,'Tue','Tuesday') ,
(3,'Wed','Wednesday') ,
(4,'Thu','Thursday'),
(5,'Fri','Friday'),
(6,'Sat','Saturday'),
(7,'Sun','Sunday')	
DELETE @ListOWeekDays WHERE DyNumber=1
UPDATE @ListOWeekDays SET WeekName='Saturday is holiday'  WHERE DyNumber=6
SELECT * FROM @ListOWeekDays
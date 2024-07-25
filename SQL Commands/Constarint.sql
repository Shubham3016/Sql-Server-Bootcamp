/*

SQL UNIQUE Constraint

The UNIQUE constraint ensures that all values in a column are different.

Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.

A PRIMARY KEY constraint automatically has a UNIQUE constraint.

However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table.

*/

Create table #sales
(
Id int Not Null Unique,
name varchar(10)
)

Select * from #sales

-- adding constriant 
Alter table #sales
add unique(name)

Alter table #sales
drop constraint UQ__#sales____72E12F1B4610B93F



Alter table #sales
add constraint Uni_Id Unique(Name)


Alter table #sales
drop constraint Uni_id

---------------------------------------------------------------------------------------------------
/*

SQL CHECK Constraint

The CHECK constraint is used to limit the value range that can be placed in a column.

If you define a CHECK constraint on a column it will allow only certain values for this column.

If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.

*/

CREATE TABLE #Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age>=18)

);

-- To check constraint name click on table name and use shotcut alt+f1 Or sp_help Function 
-- For temp table select DB tempdb and use shotcut alt+f1 Or sp_help Function  

Create table #persons1
(
Id INt Not null,
Lastname Varchar(255) Not null,
Firstname varchar(255),
Age int 
COnstraint Chk_age check(age > 18) 
)

--- Forgot to add  check in #persons2 we can add it using alter 

Create table #persons2
(
Id INt Not null,
Lastname Varchar(255) Not null,
Firstname varchar(255),
Age int 
)

--Add constraint

Alter table #persons2
Add check(age>18)

Alter table #persons2
add constraint chk_aged check(age>18)


Insert into #persons2 values(1,'M','sds',19)

Insert into #persons2 values(2,'sd','dds',18)

--Drop Constraint 

Alter table #persons2
Drop Constraint CK__#persons2____Age__A5CEFE9B


ALter table #persons2
Drop constraint Chk_aged







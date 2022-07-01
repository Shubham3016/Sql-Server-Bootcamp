# Sql-Server-Bootcamp

## DATABASE
------------------

### A database is an organized collection of data that is structured into tables, rows, columns, and indexes. 
### It helps the user to find the relevant information frequently.

-----------------------------------------------------------------------------------------------------------------------------------

# Use of database
----------------------

1. Manages large amounts of data: 
2. Accurate: Each database can store the data accurately 
3. Easy to update:
4. Security:
5. Data integrity: Each database ensures that the stored data is accurate and consistent.
6. Easy to research data:

-------------------------------------------------------------------------------------------------------------------------------------

### There Are two types of database:

1. system Database
2. User database

-------------------------------------------------------------------------------------------------------------------------------------

### System Database:

#### The system databases are created automatically while installing the MS SQL Server on our system.

The following are the list of system databases in SQL Server:

* Master
* Model
* MSDB
* Tempdb
--------------------------------------------------------------------------------------------------------------------------------------

### User database:

#### User database are created by database user like DBA or any other user who are using database
---------------------------------------------------------------------------------------------------------------------------------------


-- creating Database

create database Demo;

--To know all databases details

select * from sys.databases 

--To know all databases names

select name from sys.databases order by 1 

select name from sys.databases order by name


-- How to drop database Sql server please refer below link

--https://www.javatpoint.com/sql-server-drop-database

--DROP DATABASE [IF EXIST] database_name  

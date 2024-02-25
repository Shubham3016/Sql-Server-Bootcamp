
# SQL Server Bootcamp

## DATA
Data can be **anything and everything** Any information or facts can be considered as data like your name, age, Date of birth, Address, mobile no all this stuff can be considered as data.

Data can be in any form like it can be in image format, it can be in video format or can be files and txt it can be anything and can be stored in database
## Database

**Database can be considered as container** where data or information can be stored which is electronically stored in database. 

Database are systems that allows users to store and organize the data. They are useful when dealing with large amounts of data.

A database is an **organized collection of data, stored and retrieved digitally from a remote or local computer system.**
Databases can be vast and complex, and such databases are developed using fixed design and modelling approaches.

**FOR EXAMPLE. :-** College Database organizes the data about the admin, staff, students and faculty etc.

**FOR EXAMPLE :-** Suppose we have to design college timesheet data that can be stored is staff data, college data, student’s data like student’s details, marks, timesheet any many more.

## Purpose of storing data

Purpose of storing data is that it can be **easily accessed, manged, modified, protected and can be analysed.**

Any information that you entered is actually stored in database. And data is shown in application actually being retrieved from database.

Using the database, you can easily retrieve, insert, and delete the information.

## Types of databases

There are various types of databases used for storing different varieties of data:

### 1) Centralized Database
Centralized database management system is the system in which all the data is stored and managed in a single unit. This is also known as central computer database system. This system is mostly used in an organization.

It comforts the users to access the stored data from different locations through several applications

![image](https://github.com/Shubham3016/Sql-Server-Bootcamp/assets/43364183/e16dc7b3-e0ce-4ee5-9199-6a97e739b3ed)


### 2) Distributed Database

Unlike a centralized database system, in distributed systems, data is distributed among different database systems of an organization. These database systems are connected via communication links. Such links help the end-users to access the data easily. Examples of the Distributed database are Apache Cassandra, HBase, Ignite, etc.

![image](https://github.com/Shubham3016/Sql-Server-Bootcamp/assets/43364183/4dd71e92-ef40-4d00-9dee-202fe8af3113)


### 3) Relational Database

This database is based on the relational data model, which stores data in the form of **rows(tuple) and columns(attributes), and together forms a table(relation).** A relational database uses SQL for storing, manipulating, as well as maintaining the data. 

**Examples of Relational databases are** MySQL, Microsoft SQL Server, Oracle, etc.

### 4) NoSQL Database

Non-SQL/Not Only SQL is a type of database that is used for storing a wide range of data sets. It is not a relational database as it stores data not only in tabular form but in several different ways.

It came into existence when the demand for building modern applications increased. Thus, NoSQL presented a wide variety of database technologies in response to the demands. We can further divide a NoSQL database into the following four types:

### 5) Cloud Database

A type of database where data is stored in a virtual environment and executes over the cloud computing platform. It provides users with various cloud computing services (SaaS, PaaS, IaaS, etc.) for accessing the database. 

There are numerous cloud platforms, but the best options are:

Amazon Web Services(AWS)
, Microsoft Azure
, Kamatera
, PhonixNAP
, ScienceSoft
, Google Cloud SQL, etc.



## DBMS
DBMS is pronounced as **Database Management System**

Lot of people consider database as DBMS but it is not correct. Database is act as container that is use to stored data on other hand **DBMS is nothing but Database management system is a software which is used to manage the database.**

**For example:** MySQL, Oracle, SQL SERVER etc are a very popular commercial database which is used in different applications.

DBMS provides an interface to perform various operations like database creation, storing data in it, updating data, creating a table in the database and a lot more.

It provides **protection and security to the database** In the case of multiple users, it also maintains data consistency.


## RDBMS

**RDBMS** stands for **Relational Database Management System.**

All modern database management systems like SQL, MS SQL Server, IBM DB2, ORACLE, My-SQL, and Microsoft Access are based on RDBMS.

It is called Relational Database Management System (RDBMS) because it is based on the relational model introduced by E.F. Codd.

- Data is represented in terms of **tuples (rows)** in RDBMS.
- A relational database is the most commonly used database. It contains several tables, and each table has its primary key.
- Due to a collection of an organized set of tables, data can be accessed easily in RDBMS.
- 
![image](https://github.com/Shubham3016/Sql-Server-Bootcamp/assets/43364183/49f4b696-8f16-44b0-b271-2f714b53a460)


## Table/Relation

Everything in a relational database is stored in the form of relations. The RDBMS database uses tables to store data. A table is a collection of related data entries and contains rows and columns to store data.

Each table represents some real-world objects such as person, place, or event about which information is collected. The organized collection of data into a relational table is known as the logical view of the database.

![image](https://github.com/Shubham3016/Sql-Server-Bootcamp/assets/43364183/814fbce9-56c6-411f-ba62-cb31fd4e931d)

## Row

A row of a table is also called a record or tuple. It contains the specific information of each entry in the table. It is a horizontal entity in the table. For example, The above table contains 5 records.

![image](https://github.com/Shubham3016/Sql-Server-Bootcamp/assets/43364183/4899bb68-e392-4a2b-99d2-8728750abe63)

## Column/attribute

A column is a vertical entity in the table which contains all information associated with a specific field in a table. For example, "name" is a column in the above table which contains all information about a student's name.

![image](https://github.com/Shubham3016/Sql-Server-Bootcamp/assets/43364183/ec222f23-34c4-4527-856f-f0ad68069350)


## Difference between DBMS and RDBMS

DBMS and RDBMS both are used to store information in physical database but there are some remarkable differences between them.


![image](https://github.com/Shubham3016/Sql-Server-Bootcamp/assets/43364183/bead8553-bab0-4317-b6cb-d214c64ccf58)


### SQL

SQL is a short-form of the **Structured Query Language,** and it is pronounced as S-Q-L or sometimes as See-Quell.

SQL is a programming language which is used to interact with relational database or RDBMS

It is an database language  that is mainly designed for maintaining the data in relational database management systems (RDBMS). It is a special tool used by data professionals for handling structured data

Using SQL commands, you can read data from a relational database or write data into a relational database. You can also create, modify and delete database. SQL can also be used to analyze and protect data.

Almost all of the RDBMS available today such as Oracle, MySQL, Microsoft SQL Server, PostgreSQL, IBM DB2, SQLite, MariaDB, Teradata, Hive etc uses SQL to manage data.

SQL Server provides two types of database:

- **System databases**
- **User Databases**

#### System Databases: 

The system databases are created automatically while installing the ANY RDBMS like my sql, sql server on our system. It plays an essential role in the server such database run perfectly. 

The following are the list of system databases in SQL Server:

- Master
- Model
- MSDB
- Tempdb

#### User Databases: 

The user databases are created by database users like DBAs and testers who can access a database also.

## SQL Commands

SQL commands are instructions. It is used to communicate with the database. It is also used to perform specific tasks, functions, and queries of data.
SQL can perform various tasks like create a table, add data to tables, drop the table, modify the table, set permission for users.
SQL Server provides two types of database:

## Types of SQL Commands

There are five types of SQL commands: **DDL, DML, DCL, TCL, and DQL**.

![image](https://github.com/Shubham3016/Sql-Server-Bootcamp/assets/43364183/d652bf27-5d0c-4df4-bbed-849b2cb5ae74)

### Data Definition Language (DDL)

DDL changes the structure of the table like creating a table, deleting a table, altering a table, etc.

Used to define the structure of database objects such as tables, views, functions etc. Using DDL commands, we can create, modify and drop any database objects. The commands include:

All the command of DDL are auto-committed that means it permanently save all the changes in the database.

Here are some commands that come under **DDL**:

- CREATE
- ALTER
- DROP
- TRUNCATE

### CREATE 

create command is used to Create a new database object such a tables, views or functions etc.

#### SYNTAX

To run tests, run the following command

```bash
 Create database database_name;
```
In the above syntax, the database_name indicates the name of a new database. which is **user created database**

### Example
Let us understand how to create a database in SQL through an example. To do this, first, open the RDBMS Here we had taken RDBMS sql server after that connect with the database engine by giving the server address and the authentication details. Then, click a new query from the standard bar.

Once the connection becomes successful, execute the below statement to create a new database named Practice:

```bash
 Create database Practice;
```
Whether, you create a database graphically using the designer or, using a query, the following 2 files gets generated.

**.MDF file (Master data File)-**

Data File (Contains actual data)

**.LDF file (Log Data File)**

Transaction Log file (Used to recover the database)







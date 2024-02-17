
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

![image](https://github.com/Shubham3016/Sql-Server-Bootcamp/assets/43364183/27e5f567-f1bb-46b4-af66-e0bfa4b6888a)

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

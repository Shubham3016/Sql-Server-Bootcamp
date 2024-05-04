-- creating Database

create database Demo;

--To know all databases details

select * from sys.databases
  
exec sp_databases


--To know all databases names

select name from sys.databases order by 1 

select name from sys.databases order by name


-- To rename database name

alter database demo modify name=Prac

alter database Prac modify name=demo

exec sp_renamedb 'demo','Prac'



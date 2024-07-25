use Practice_Shubham

ALTER AUTHORIZATION ON DATABASE::Sql_Prac TO Prac; -- Change database owner to 'sa'

-- To rename database name

alter database demo modify name=Prac

alter database Prac modify name=demo

exec sp_renamedb 'demo','Prac'



ALTER DATABASE YourDatabase
SET READ_ONLY;

-- Database Info 
SELECT *
FROM sys.databases
WHERE name = 'Practice_Shubham';


select name, user_access_desc from sys.databases where name='Practice_Shubham'
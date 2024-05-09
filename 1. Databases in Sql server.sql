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



create table entries ( 
name varchar(20),
address varchar(20),
email varchar(20),
floor int,
resources varchar(10));

insert into entries 
values 
('A','Bangalore','A@gmail.com',1,'CPU'),
('A','Bangalore','A1@gmail.com',1,'CPU'),
('A','Bangalore','A2@gmail.com',2,'DESKTOP'),
('B','Bangalore','B@gmail.com',2,'DESKTOP'),
('B','Bangalore','B1@gmail.com',2,'DESKTOP'),
('B','Bangalore','B2@gmail.com',1,'MONITOR');

select * from entries;



with test as ( 
select name
,floor
,count(floor) as floor_count
,ROW_NUMBER() OVER (PARTITION BY name ORDER BY COUNT(*) DESC) AS visit_rank
from entries
group by name, floor
),
test2 as (
select distinct name, resources from entries
)
,test3 as (
select name, string_agg(resources,',') as all_res from test2 group by name
)
 select entries.name
 ,count(*) as visits
 ,test.floor,all_res as res from entries 
 join test on entries.name = test.name
 join test3 on entries.name = test3.name
 where visit_rank =1
 group by entries.name, test.floor, all_res



with test as ( 
select name,floor,count(floor) as floor_count,
rank() over (partition by name order by count(floor) desc) as rank from entries group by name, floor)
,
test2 as (
select distinct name, resources from entries
)
,test3 as (
select name, string_agg(resources,',') as all_res from test2 group by name
)
 select entries.name
 ,count(*) as visits
 ,test.floor,all_res as res from entries 
 join test on entries.name = test.name
 join test3 on entries.name = test3.name
 where rank =1
 group by entries.name, test.floor, all_res


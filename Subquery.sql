CREATE TABLE DEPT
   (DEPTNO INT PRIMARY KEY, 
	DNAME VARCHAR(14), 
	LOC VARCHAR(13)
   ) ;
   

Insert into DEPT (DEPTNO,DNAME,LOC) values (10,'ACCOUNTING','NEW YORK');
Insert into DEPT (DEPTNO,DNAME,LOC) values (20,'RESEARCH','DALLAS');
Insert into DEPT (DEPTNO,DNAME,LOC) values (30,'SALES','CHICAGO');
Insert into DEPT (DEPTNO,DNAME,LOC) values (40,'OPERATIONS','BOSTON');
Insert into DEPT (DEPTNO,DNAME,LOC) values (50,'IT','HYDERABAD');

 CREATE TABLE EMP
   (
    EMPNO INT PRIMARY KEY, 
	ENAME VARCHAR(10), 
	JOB VARCHAR(10), 
	MGR int, 
	HIREDATE DATE, 
	SAL int, 
	DEPTNO int REFERENCES DEPT(DEPTNO)
   ) ;
   
   
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) values (7839,'KING','PRESIDENT',null,'2023-01-01',5000,10);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) values (7698,'BLAKE','MANAGER',7839,('2022-02-01'),2850,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) values (7782,'CLARK','MANAGER',7839,('2021-02-01'),2450,10);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) values (7566,'JONES','MANAGER',7839,('2024-01-01'),2975,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) values (7788,'SCOTT','ANALYST',7566,('2020-03-04'),3000,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) values (7902,'FORD','ANALYST',7566,('2020-12-81'),3000,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) values (7369,'SMITH','CLERK',7902,('2017-12-08'),50,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) values (8008,'BIPLAB  ','CLERK',7788,('2021-07-09'),8999,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) values (8009,'BIPLAB','SALESMAN',7698,('2023-03-02'),9000,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) values (8010,'Jason','SALESMAN',7698,('2022-03-22'),9000,30);


select * from EMP;
SELECT * FROM DEPT;



-- SUBQUERY

--Employee belomings to sales dept
Select DEPTNO from dept 
WHERE DNAME='SALES'

-- single row subquery
select * from EMP where deptno =(Select DEPTNO from dept 
WHERE DNAME='SALES');

select * from EMP where deptno =30

-- 30 is hard coded if there is chane in dept no then query will not statidy results
-- 30 is sales dept


-- INNER query will run first
-- mULTIPLE ROW SUBQUERY


select * from EMP where deptno in(Select DEPTNO from dept 
WHERE DNAME='SALES' or DNAME='ACCOUNTING');


-- inner  uqery returting the miultiple rows

--we cannot use order by inside subquery

select * from EMP where deptno in(Select DEPTNO from dept 
WHERE DNAME='SALES' or DNAME='ACCOUNTING' ORDER BY DNAME DESC);

-- final
select * from EMP where deptno in(Select DEPTNO from dept 
WHERE DNAME='SALES' or DNAME='ACCOUNTING')ORDER BY DEPTNO DESC;


-- employee earning greater than manager

-- Corelation SUBQUERY

SELECT Ename,SAL 
from emp e
where sal>(SELECT sal from emp M where e.MGR=m.EMPNO)

-- SECOND highest salary

SELECT * FROM EMP order by sal desc

SELECT * FROM EMP 
where SAL<9000
order by sal desc



SELECT sal FROM EMP 
where SAL<(select max(sal) from EMP)
order by 1 desc

select * from emp




SELECT  max(sal)as sal FROM EMP 
where SAL<(select max(sal) from EMP)
order by 1 desc

select * from EMP where deptno =30


Create Table tblProducts
(
 [Id] int identity primary key,
 [Name] nvarchar(50),
 [Description] nvarchar(250)
)

Create Table tblProductSales
(
 Id int primary key identity,
 ProductId int foreign key references tblProducts(Id),
 UnitPrice int,
 QuantitySold int
)

Insert into tblProducts values ('TV', '52 inch black color LCD TV')
Insert into tblProducts values ('Laptop', 'Very thin black color acer laptop')
Insert into tblProducts values ('Desktop', 'HP high performance desktop')

Insert into tblProductSales values(3, 450, 5)
Insert into tblProductSales values(2, 250, 7)
Insert into tblProductSales values(3, 450, 4)
Insert into tblProductSales values(3, 450, 9)

SELECT * FROM tblProducts

SELECT * FROM tblProductsales


SELECT * FROM tblProducts
where ID not in(SELECT DISTINCT ProductId FROM tblProductSales)




SELECT * from tblProducts a
Left join tblProductsales b
on a.Id=b.ProductId
where b.ProductId is null



---Retrive name of product and qty sold records

Select name,
(SELECT SUM(QuantitySold)from tblProductSales a
where ProductId=b.id)
from tblProducts b
order by name



SELECT Name,sum(QuantitySold)as total 
from tblProducts a
 left join tblProductSales b
 on a.Id=b.ProductId
 group by Name

--From these examples, it should be very clear that, a subquery is simply a select statement, that returns a single value and can be nested inside a SELECT, UPDATE, INSERT, or DELETE statement. 

--It is also possible to nest a subquery inside another subquery.

--According to MSDN, subqueries can be nested upto 32 levels.

--Subqueries are always encolsed in paranthesis and are also called as inner queries, and the query containing the subquery is called as outer query.

--The columns from a table that is present only inside a subquery, cannot be used in the SELECT list of the outer query.



--If the subquery depends on the outer query for its values, then that sub query is called as a correlated subquery. In the where clause of the subquery below, "ProductId" column get it's value from tblProducts table that is present in the outer query. So, here the subquery is dependent on the outer query for it's value, hence this subquery is a correlated subquery. Correlated subqueries get executed, once for every row that is selected by the outer query. corelated subquery, cannot be executed independently of the outer query.

Select [Name],
(Select SUM(QuantitySold) from tblProductSales where ProductId = tblProducts.Id) as TotalQuantity
from tblProducts



SELECT *  FROM tblProducts
where ID not in(SELECT distinct ProductId from tblProductSales)


SELECT NAME,
(SELECT SUM(QuantitySold) from tblProductSales  a
where ProductId=b.id)as qtsold
from tblProducts b

--In the example below, sub query is executed first and only once. The sub query resutls are then used by the outer query. In a non
create table department
(
	dept_id		int ,
	dept_name	varchar(50) PRIMARY KEY,
	location	varchar(100)
);
insert into department values (1, 'Admin', 'Bangalore');
insert into department values (2, 'HR', 'Bangalore');
insert into department values (3, 'IT', 'Bangalore');
insert into department values (4, 'Finance', 'Mumbai');
insert into department values (5, 'Marketing', 'Bangalore');
insert into department values (6, 'Sales', 'Mumbai');




CREATE TABLE EMPLOYEE
(
    EMP_ID      INT PRIMARY KEY,
    EMP_NAME    VARCHAR(50) NOT NULL,
    DEPT_NAME   VARCHAR(50) NOT NULL,
    SALARY      INT,
    constraint fk_emp foreign key(dept_name) references department(dept_name)
);
insert into employee values(101, 'Mohan', 'Admin', 4000);
insert into employee values(102, 'Rajkumar', 'HR', 3000);
insert into employee values(103, 'Akbar', 'IT', 4000);
insert into employee values(104, 'Dorvin', 'Finance', 6500);
insert into employee values(105, 'Rohit', 'HR', 3000);
insert into employee values(106, 'Rajesh',  'Finance', 5000);
insert into employee values(107, 'Preet', 'HR', 7000);
insert into employee values(108, 'Maryam', 'Admin', 4000);
insert into employee values(109, 'Sanjay', 'IT', 6500);
insert into employee values(110, 'Vasudha', 'IT', 7000);
insert into employee values(111, 'Melinda', 'IT', 8000);
insert into employee values(112, 'Komal', 'IT', 10000);
insert into employee values(113, 'Gautham', 'Admin', 2000);
insert into employee values(114, 'Manisha', 'HR', 3000);
insert into employee values(115, 'Chandni', 'IT', 4500);
insert into employee values(116, 'Satya', 'Finance', 6500);
insert into employee values(117, 'Adarsh', 'HR', 3500);
insert into employee values(118, 'Tejaswi', 'Finance', 5500);
insert into employee values(119, 'Cory', 'HR', 8000);
insert into employee values(120, 'Monica', 'Admin', 5000);
insert into employee values(121, 'Rosalin', 'IT', 6000);
insert into employee values(122, 'Ibrahim', 'IT', 8000);
insert into employee values(123, 'Vikram', 'IT', 8000);
insert into employee values(124, 'Dheeraj', 'IT', 11000);



CREATE TABLE employee_history
(
    emp_id      INT PRIMARY KEY,
    emp_name    VARCHAR(50) NOT NULL,
    dept_name   VARCHAR(50),
    salary      INT,
    location    VARCHAR(100),
    constraint fk_emp_hist_01 foreign key(dept_name) references department(dept_name),
    constraint fk_emp_hist_02 foreign key(emp_id) references employee(emp_id)
);

create table sales
(
	store_id  		int,
	store_name  	varchar(50),
	product_name	varchar(50),
	quantity		int,
	price	     	int
);
insert into sales values
(1, 'Apple Store 1','iPhone 13 Pro', 1, 1000),
(1, 'Apple Store 1','MacBook pro 14', 3, 6000),
(1, 'Apple Store 1','AirPods Pro', 2, 500),
(2, 'Apple Store 2','iPhone 13 Pro', 2, 2000),
(3, 'Apple Store 3','iPhone 12 Pro', 1, 750),
(3, 'Apple Store 3','MacBook pro 14', 1, 2000),
(3, 'Apple Store 3','MacBook Air', 4, 4400),
(3, 'Apple Store 3','iPhone 13', 2, 1800),
(3, 'Apple Store 3','AirPods Pro', 3, 750),
(4, 'Apple Store 4','iPhone 12 Pro', 2, 1500),
(4, 'Apple Store 4','MacBook pro 16', 1, 3500);


select * from employee;
select * from department;
select * from employee_history;
select * from sales;



----------SUBQUERY

-- TYPES OF SUBQUERY
--------------------------------------------------------------------------------
/* < SCALAR SUBQUERY > */
/* QUESTION: Find the employees who earn more than the average salary earned by all employees. */
-- it return exactly 1 row and 1 column

Select * from EMPLOYEE
select * from Department


Select avg(salary) as Avg_Salary
from EMPLOYEE

--5791

Select * from EMPLOYEE
where salary>5791

Select * --- OUTER or main query
from EMPLOYEE
where salary > (Select avg(salary) as Avg_Salary from EMPLOYEE)-- INNER QUERY


-- SUBQUERY Itself excuted once whatever output is 
--written by subquery will be use to  process the main query or the outer query

-- TYPES OF SUBQUERIES

--SCALER
--Correlated
--MultiPle row subquery


-- SCALER subquery
-- IT always returns 1 row and 1 column

SELECT * FROM EMPLOYEE e
join (Select avg(salary) as sal from EMPLOYEE)avg_Sal
on e.SALARY >= avg_Sal.sal


SELECT e.* FROM EMPLOYEE e
join (Select avg(salary) as sal from EMPLOYEE)avg_Sal
on e.SALARY >= avg_Sal.sal

-- ALTERNATE WAY

; with cte as
(
SELECT * ,AVG(salary) Over()as Sal FROM EMPLOYEE e
)select * from CTE



; with cte as
(
SELECT * ,AVG(salary) Over(Partition by Dept_name)as Sal FROM EMPLOYEE e
)select * from CTE



* < MULTIPLE ROW SUBQUERY > */
-- Multiple column, multiple row subquery
/* QUESTION: Find the employees who earn the highest salary in each department. */
--1) find the highest salary in each department.
--2) filter the employees based on above result.

-- SUBQUERY which returns multiple column and Multiple row
-- Subquery which returns only 1 column and multiple rows

find the highest salary in each department.

select *,max(Salary)over(Partition by dept_name order by dept_name)as sal
from employee
group by DEPT_NAME

;WITH MaxSalaryPerDept AS (
    SELECT 
        EMP_ID, 
        EMP_NAME, 
        Dept_name, 
        salary,
        Dense_rank() OVER (PARTITION BY Dept_name ORDER BY salary DESC) AS rn
    FROM employee
)
SELECT EMP_ID, 
        EMP_NAME, 
        Dept_name
		,salary
FROM MaxSalaryPerDept
WHERE rn = 1;


DROP TABLE employee_history;
DROP TABLE EMPLOYEE;
drop table department;
DROP table sales ;

create table department
(
	dept_id		int ,
	dept_name	varchar(50) PRIMARY KEY,
	location	varchar(100)
);
insert into department values (1, 'Admin', 'Bangalore');
insert into department values (2, 'HR', 'Bangalore');
insert into department values (3, 'IT', 'Bangalore');
insert into department values (4, 'Finance', 'Mumbai');
insert into department values (5, 'Marketing', 'Bangalore');
insert into department values (6, 'Sales', 'Mumbai');

CREATE TABLE EMPLOYEE
(
    EMP_ID      INT PRIMARY KEY,
    EMP_NAME    VARCHAR(50) NOT NULL,
    DEPT_NAME   VARCHAR(50) NOT NULL,
    SALARY      INT,
    constraint fk_emp foreign key(dept_name) references department(dept_name)
);
insert into employee values(101, 'Mohan', 'Admin', 4000);
insert into employee values(102, 'Rajkumar', 'HR', 3000);
insert into employee values(103, 'Akbar', 'IT', 4000);
insert into employee values(104, 'Dorvin', 'Finance', 6500);
insert into employee values(105, 'Rohit', 'HR', 3000);
insert into employee values(106, 'Rajesh',  'Finance', 5000);
insert into employee values(107, 'Preet', 'HR', 7000);
insert into employee values(108, 'Maryam', 'Admin', 4000);
insert into employee values(109, 'Sanjay', 'IT', 6500);
insert into employee values(110, 'Vasudha', 'IT', 7000);
insert into employee values(111, 'Melinda', 'IT', 8000);
insert into employee values(112, 'Komal', 'IT', 10000);
insert into employee values(113, 'Gautham', 'Admin', 2000);
insert into employee values(114, 'Manisha', 'HR', 3000);
insert into employee values(115, 'Chandni', 'IT', 4500);
insert into employee values(116, 'Satya', 'Finance', 6500);
insert into employee values(117, 'Adarsh', 'HR', 3500);
insert into employee values(118, 'Tejaswi', 'Finance', 5500);
insert into employee values(119, 'Cory', 'HR', 8000);
insert into employee values(120, 'Monica', 'Admin', 5000);
insert into employee values(121, 'Rosalin', 'IT', 6000);
insert into employee values(122, 'Ibrahim', 'IT', 8000);
insert into employee values(123, 'Vikram', 'IT', 8000);
insert into employee values(124, 'Dheeraj', 'IT', 11000);


CREATE TABLE employee_history
(
    emp_id      INT PRIMARY KEY,
    emp_name    VARCHAR(50) NOT NULL,
    dept_name   VARCHAR(50),
    salary      INT,
    location    VARCHAR(100),
    constraint fk_emp_hist_01 foreign key(dept_name) references department(dept_name),
    constraint fk_emp_hist_02 foreign key(emp_id) references employee(emp_id)
);

create table sales
(
	store_id  		int,
	store_name  	varchar(50),
	product_name	varchar(50),
	quantity		int,
	price	     	int
);
insert into sales values
(1, 'Apple Store 1','iPhone 13 Pro', 1, 1000),
(1, 'Apple Store 1','MacBook pro 14', 3, 6000),
(1, 'Apple Store 1','AirPods Pro', 2, 500),
(2, 'Apple Store 2','iPhone 13 Pro', 2, 2000),
(3, 'Apple Store 3','iPhone 12 Pro', 1, 750),
(3, 'Apple Store 3','MacBook pro 14', 1, 2000),
(3, 'Apple Store 3','MacBook Air', 4, 4400),
(3, 'Apple Store 3','iPhone 13', 2, 1800),
(3, 'Apple Store 3','AirPods Pro', 3, 750),
(4, 'Apple Store 4','iPhone 12 Pro', 2, 1500),
(4, 'Apple Store 4','MacBook pro 16', 1, 3500);


select * from employee;
select * from department;
select * from employee_history;
select * from sales;


-- INTRO
--------------------------------------------------------------------------------
/* < WHAT IS SUBQUERIES? Sample subquery. How SQL processes this statement containing subquery? > */

/* QUESTION: Find the employees who's salary is more than the average salary earned by all employees. */
-- 1) find the avg salary
-- 2) filter employees based on the above avg salary
select *
from employee e
where salary > (select avg(salary) from employee)
order by e.salary;



-- TYPES OF SUBQUERY
--------------------------------------------------------------------------------
/* < SCALAR SUBQUERY > */
/* QUESTION: Find the employees who earn more than the average salary earned by all employees. */
-- it return exactly 1 row and 1 column

select *
from employee e
where salary > (select avg(salary) from employee)
order by e.salary;

select e.*, round(avg_sal.sal,2) as avg_salary
from employee e
join (select avg(salary) sal from employee) avg_sal
	on e.salary > avg_sal.sal;



--------------------------------------------------------------------------------
/* < MULTIPLE ROW SUBQUERY > */
-- Multiple column, multiple row subquery
/* QUESTION: Find the employees who earn the highest salary in each department. */
1) find the highest salary in each department.
2) filter the employees based on above result.
select *
from employee e
where (dept_name,salary) in (select dept_name, max(salary) from employee group by dept_name)
order by dept_name, salary;

-- Single column, multiple row subquery
/* QUESTION: Find department who do not have any employees */
1) find the departments where employees are present.
2) from the department table filter out the above results.
select *
from department
where dept_name not in (select distinct dept_name from employee);


--------------------------------------------------------------------------------
/* < CORRELATED SUBQUERY >
-- A subquery which is related to the Outer query
/* QUESTION: Find the employees in each department who earn more than the average salary in that department. */
1) find the avg salary per department
2) filter data from employee tables based on avg salary from above result.

select *
from employee e
where salary > (select avg(salary) from employee e2 where e2.dept_name=e.dept_name)
order by dept_name, salary;

/* QUESTION: Find department who do not have any employees */
-- Using correlated subquery
select *
from department d
where not exists (select 1 from employee e where e.dept_name = d.dept_name)



--------------------------------------------------------------------------------
/* < SUBQUERY inside SUBQUERY (NESTED Query/Subquery)> */

/* QUESTION: Find stores who's sales where better than the average sales accross all stores */
1) find the sales for each store
2) average sales for all stores
3) compare 2 with 1
-- Using multiple subquery
select *
from (select store_name, sum(price) as total_sales
	 from sales
	 group by store_name) sales
join (select avg(total_sales) as avg_sales
	 from (select store_name, sum(price) as total_sales
		  from sales
		  group by store_name) x
	 ) avg_sales
on sales.total_sales > avg_sales.avg_sales;

-- Using WITH clause
with sales as
	(select store_name, sum(price) as total_sales
	 from sales
	 group by store_name)
select *
from sales
join (select avg(total_sales) as avg_sales from sales) avg_sales
	on sales.total_sales > avg_sales.avg_sales;



-- CLAUSES WHERE SUBQUERY CAN BE USED
--------------------------------------------------------------------------------
/* < Using Subquery in WHERE clause > */
/* QUESTION:  Find the employees who earn more than the average salary earned by all employees. */
select *
from employee e
where salary > (select avg(salary) from employee)
order by e.salary;


--------------------------------------------------------------------------------
/* < Using Subquery in FROM clause > */
/* QUESTION: Find stores who's sales where better than the average sales accross all stores */
-- Using WITH clause
with sales as
	(select store_name, sum(price) as total_sales
	 from sales
	 group by store_name)
select *
from sales
join (select avg(total_sales) as avg_sales from sales) avg_sales
	on sales.total_sales > avg_sales.avg_sales;


--------------------------------------------------------------------------------
/* < USING SUBQUERY IN SELECT CLAUSE > */
-- Only subqueries which return 1 row and 1 column is allowed (scalar or correlated)
/* QUESTION: Fetch all employee details and add remarks to those employees who earn more than the average pay. */
select e.*
, case when e.salary > (select avg(salary) from employee)
			then 'Above average Salary'
	   else null
  end remarks
from employee e;

-- Alternative approach
select e.*
, case when e.salary > avg_sal.sal
			then 'Above average Salary'
	   else null
  end remarks
from employee e
cross join (select avg(salary) sal from employee) avg_sal;



--------------------------------------------------------------------------------
/* < Using Subquery in HAVING clause > */
/* QUESTION: Find the stores who have sold more units than the average units sold by all stores. */
select store_name, sum(quantity) Items_sold
from sales
group by store_name
having sum(quantity) > (select avg(quantity) from sales);




-- SQL COMMANDS WHICH ALLOW A SUBQUERY
--------------------------------------------------------------------------------
/* < Using Subquery with INSERT statement > */
/* QUESTION: Insert data to employee history table. Make sure not insert duplicate records. */
insert into employee_history
select e.emp_id, e.emp_name, d.dept_name, e.salary, d.location
from employee e
join department d on d.dept_name = e.dept_name
where not exists (select 1
				  from employee_history eh
				  where eh.emp_id = e.emp_id);


--------------------------------------------------------------------------------
/* < Using Subquery with UPDATE statement > */
/* QUESTION: Give 10% increment to all employees in Bangalore location based on the maximum
salary earned by an emp in each dept. Only consider employees in employee_history table. */
update employee e
set salary = (select max(salary) + (max(salary) * 0.1)
			  from employee_history eh
			  where eh.dept_name = e.dept_name)
where dept_name in (select dept_name
				   from department
				   where location = 'Bangalore')
and e.emp_id in (select emp_id from employee_history);


--------------------------------------------------------------------------------
/* < Using Subquery with DELETE statement > */
/* QUESTION: Delete all departments who do not have any employees. */
delete from department d1
where dept_name in (select dept_name from department d2
				    where not exists (select 1 from employee e
									  where e.dept_name = d2.dept_name));





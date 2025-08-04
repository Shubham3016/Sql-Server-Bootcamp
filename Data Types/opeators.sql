--OPEATORS IN SQL 


-- SQL Arithmetic Operators IN SQL SERVER 

--SQL Addition Operator (+)

DECLARE @A INT = 5;
DECLARE @B INT = 56;

SELECT @A + @B AS Addition,
       @A - @B AS Subtraction,
       @A * @B AS Multiplication,
       @B / @A AS Division,
       @B % @A AS Modulus;

-- ORACLE ARITHMETIC OPERATOR

SELECT 5 + 56 AS Addition,
       5 - 56 AS Subtraction,
       5 * 56 AS Multiplication,
       56 / 5 AS Division,
       MOD(56, 5) AS Modulus
FROM DUAL;

-- MY SQL ARITHMETIC OPERATOR

SELECT 5 + 56 AS Addition,
       5 - 56 AS Subtraction,
       5 * 56 AS Multiplication,
       56 / 5 AS Division,
       56 % 5 AS Modulus;

-- PG ADMIN ARITHMETIC OPERATOR

SELECT 5 + 56 AS Addition,
       5 - 56 AS Subtraction,
       5 * 56 AS Multiplication,
       56 / 5 AS Division,
       56 % 5 AS Modulus;

--SQL Comparison Operators

--SQL Equal Operator (=)
--Comparison (Relational) Operators in Oracle

/*
= Equal to	
SELECT * FROM employee WHERE dept_id = 10;

<> or != Not Equal to	
SELECT * FROM products WHERE price <> 50;

> Greater than	
SELECT * FROM orders WHERE qty > 100;

< Less than	
SELECT * FROM students WHERE marks < 40;

>=Greater or Equal	
SELECT * FROM salary WHERE amount >= 20000;

<=Less or Equal	
SELECT * FROM table WHERE col <= 5;
*/


--AND	Both true	
SELECT * FROM employee WHERE dept = 'IT' AND age > 30;

--OR	Either true	
SELECT * FROM student WHERE grade = 'A' OR age < 20;

--NOT	Negate	
SELECT * FROM customer WHERE NOT city = 'London';


AND returns TRUE if both conditions are true.

SELECT * FROM employees WHERE department = 'IT' AND salary > 50000;
SELECT * FROM students WHERE marks > 90 OR attendance > 95;
SELECT * FROM employee WHERE NOT status = 'Active';


       
Use practice

SELECT * FROM SYS.TABLES

SELECT * FROM STUDENT_INFO WHERE ID=4

--SQL Not Equal Operator (!=)

SELECT * FROM STUDENT_INFO WHERE ID<>1

SELECT * FROM STUDENT_INFO WHERE ID !=1

--SQL Greater Than Operator (>)

SELECT * FROM STUDENT_INFO WHERE age > 28

--SQL Greater Than Equals to Operator (>=)

SELECT * FROM STUDENT_INFO WHERE age >=28

--SQL Less Than Operator (<)

SELECT * FROM STUDENT_INFO WHERE age < 29

--SQL Less Than Equals to Operator (<=)

SELECT * FROM STUDENT_INFO WHERE age <= 29

--SQL Logical Operators

SELECT Name, Gender FROM STUDENT_INFO 
WHERE age > ALL ( SELECT age FROM  STUDENT_INFO WHERE age = '28')  

--SQL AND Operator

Select * from STUDENT_INFO WHERE age = 28 and name='Shubham'

--SQL OR Operator

Select * from STUDENT_INFO WHERE age = 28 or name='Shubham'

-- SQL BETWEEN

Select * from STUDENT_INFO WHERE marks between 70 and 80 

-- SQL BETWEEN

Select * from STUDENT_INFO WHERE marks between 70 and 80

-- SQL IN

SELECT * FROM Student_info where id in(1,2,4)

-- sql not in

SELECT * FROM Student_info where age not in(28,29)

SELECT * FROM Student_info where gender in('male')





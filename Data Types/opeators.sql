--OPEATORS IN SQL 


-- SQL Arithmetic Operators

--SQL Addition Operator (+)

Declare @A int=5
Declare @B int=56

Select @a+@b as Addition

--SQL Subtraction Operator (-)
Declare @Ab int=56
Declare @Bc int=5

Select @ab-@bc as Subtraction


--SQL Multiplication Operator (+)

Declare @Ac int=5
Declare @Bd int=12

Select @ac*@bd as Multiplication

 
--SQL Division Operator (-)
Declare @c int=12
Declare @d int=2

Select @c/@d as Division


--SQL Comparison Operators

--SQL Equal Operator (=)

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



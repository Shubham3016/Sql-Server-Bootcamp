 
------------------------------------------------------------------------
--Exact numeric data types
------------------------------------------------------------------------

--This data type will store exact numbers such as integer, decimal, and money. 
--They have their own lower, upper limit, and memory requirements.
--They have their own memory needs, as well as a lower and upper limit. 
--It is also necessary to use the lowest data type to save memory requirements. 
--For example, the bit data type can be used to store true (1) or false (0) values. 
--SQL Server categorizes this data type into nine types, which are given below:

 -- bit data type takes only 1 byte like from 0-9
declare @bit bit
set @bit=77
select @bit AS bit

-- tinyint can store upto 255 numbers

declare @tinyint tinyint
set @tinyint=255
select @tinyint

-- small int can store 32767 numbers

declare @smallint smallint
set @smallint=32767
select @smallint as SMALLIN

-- int can store  UPTO 4 BYTES
--two billion, one hundred forty-seven million, four hundred eighty-three thousand, 
--six hundred forty-seven Indian rupees

declare @int int
set @int=2147483647
select @int

-- BIG INT CAN STOR UPTO 19 DIGITS MEANS 8 BYTES


declare @bigint bigint
set @bigint=2147448332432323647
select @bigint


--DECLARE @DECIMAL DECIMAL(3,2)
--SET @DECIMAL=1  
--select @DECIMAL

DECLARE @DECIMAL DECIMAL(30,20)
SET @DECIMAL=144423.232322
select @DECIMAL


DECLARE @float Float
SET @float=144423.232322
select @float

DECLARE @Num Numeric(30,20)
SET @Num=144423.232322
select @Num

DECLARE @DEC DECIMAL(20,5)
SET @DEC=144423.232322
select @DEC

-- output 12.3


--decimal [(p [,s])]

--p stands for Precision, the total number of digits in the value, i.e. 
--on both sides of the decimal point
--s stands for Scale, number of digits after the decimal point

-- IN decimal yo

--When you try to set @dec=3.14159, it results in an error because 3.14159 has a digit
--to the left of the decimal point, which your declaration doesn’t allow
--this leaves no room for digits to the left of the decimal point.

--To fix this, you could declare @dec as DECIMAL(9,5), for example. 
--This would allow for up to 9 digits in total, with 5 of them 
--to the right of the decimal point12. Here’s how you could declare it:



declare @float float
set @float=233.43323
select @float



DECLARE @PiWithNoDecimal DECIMAL(6,0) = 3.14159
DECLARE @Piupto5Decimal DECIMAL(6,5) = 3.14159
DECLARE @Piupto1Decimal DECIMAL(3,1) = 3.14159

SELECT @PiWithNoDecimal AS PiWithNoDecimal
, @Piupto5Decimal AS Piupto5Decimal
, @Piupto1Decimal AS Piupto1Decimal



------------------------------------------------------------------------------------
--Date & Time data types
------------------------------------------------------------------------------------

declare @date date
set @date='2023-11-30'
select @date

Declare @date1 date
set @date1=getdate()
select @date1

select getdate()

declare @datetime datetime
set @datetime=GETDATE()
select @datetime as datetime


Declare @datetime2 datetime2
set @datetime2=getdate()-1
Select @datetime2 as Datetime


Declare @time time
set @time=getdate()
select @time


DECLARE @dt DATETIMEOFFSET(7)
set @dt='2018-06-23 07:30:20'
select @dt

DECLARE @d1t DATETIME
set @d1t='2018-06-23 07:30:20'
select @d1t

DECLARE @d2t DATETIME2
set @d2t='2018-06-23 07:30:20'
select @d2t


Declare @smalldatetime smalldatetime
set @smalldatetime=getdate()
select @smalldatetime


declare @money money
set @money=123456789010112
select @money, DATALENGTH(@money)as [DATALENGTH]

declare @smallmoney money
set @smallmoney=123456789
select @smallmoney,DATALENGTH(@smallmoney)as [DATALENGTH]


------------------------------------------------------------------------------------
--Character strings data types
------------------------------------------------------------------------------------

--VARCHAR: It is a variable-length non-Unicode character data type. It can store up to 8,000 characters1VARCHAR uses 1 byte per character1. It is more efficient in terms of storage for strings that are primarily in the English language1234.
--NVARCHAR: It is a variable-length Unicode character data type. It can store up to 4,000 characters1NVARCHAR uses 2 bytes per character, regardless of whether it is a Unicode or non-Unicode character1. It is capable of storing any character defined by the Unicode standard, which includes all of the characters defined in various character sets (like Japanese, Korean, etc.)1234

-- char can store upto 8000 character


declare @char char(8)
set @char='BOBBy' 
select @char as CHAR ,datalength(@char)as [datalength]


declare @char1 char(8000)
set @char1='BOBByutuyuyyuiuyiuyiy' 
select @char1 as CHAR ,datalength(@char1)as [datalength]


declare @varchar varchar(20)
set @varchar='BOBBy'
select @varchar as varchar, DATALENGTH(@varchar) AS 'SizeInBytes' 

declare @varchar1 varchar(max)
set @varchar1='BOBByutuyuyyuiuyiuyiy'
select @varchar1 as varchar, DATALENGTH(@varchar1) AS 'SizeInBytes' 
 
declare @Nchar Nchar(10)
set @Nchar='bob'
select @Nchar,DATALENGTH(@Nchar) AS 'SizeInBytes' 


declare @Nvarchar varchar(10)
set @Nvarchar='abcdefghijklmnopqrstuvwxyz'
select @Nvarchar as Nvarchar,DATALENGTH(@Nvarchar) AS 'SizeInBytes' 

--drop table #demo1
create table #demo1
(
name nvarchar(10)
)

insert into #demo1 values('abcdefghio')

--it will through error 

declare @Nvarchar1 Nvarchar(max)
set @Nvarchar1='jfajjifisfpos'
select @Nvarchar1



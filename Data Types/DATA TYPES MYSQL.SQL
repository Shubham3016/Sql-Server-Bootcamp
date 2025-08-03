-- TINYINT Example (Range: -128 to 127, 0 to 255 unsigned)
SET @tinyint := 255;
SELECT @tinyint;

-- INT Example
SET @int := 2147483647;
SELECT @int;

-- BIGINT Example
SET @bigint := 9223372036854775807;
SELECT @bigint;


--------------------------------------------------------------------------------------------------------

-- MySQL uses user-defined variables (no DECLARE)
SET @decimal DECIMAL(10,2);
SET @decimal = 12345.67;
SELECT @decimal;

SET @numeric NUMERIC(7,3);
SET @numeric = 123.456;
SELECT @numeric;

SET @float FLOAT;
SET @float = 98.6;
SELECT @float;

SET @double DOUBLE;
SET @double = 1234567.89;
SELECT @double;

--------------------------------------------------------------------------------------------------------

-- User variables: no explicit type declaration, dynamic typing

SET @char_val = CAST('A' AS CHAR(1));
SELECT @char_val;

SET @varchar_val = CAST('Hello, MySQL!' AS VARCHAR(20));
SELECT @varchar_val;

SET @text_val = 'This is a longer text stored in TEXT type variable';
SELECT @text_val;




--------------------------------------------------------------------------------------------------------



-- MySQL user variables are untyped; just assign/cast values.

-- DATE example
SET @my_date = CAST('2025-08-03' AS DATE);
SELECT @my_date;

-- DATETIME example
SET @my_datetime = CAST('2025-08-03 20:00:00' AS DATETIME);
SELECT @my_datetime;


SET @my_time = TIME(NOW());
SELECT @my_time;

SET @my_time = CURTIME();
SELECT @my_time;


SET @current_timestamp = CURRENT_TIMESTAMP;
SELECT @current_timestamp;

-- Using NOW() (same as CURRENT_TIMESTAMP)
SET @now_timestamp = NOW();
SELECT @now_timestamp;



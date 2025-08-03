-- TINYINT Example (Range: -128 to 127, 0 to 255 unsigned)
SET @tinyint := 255;
SELECT @tinyint;

-- INT Example
SET @int := 2147483647;
SELECT @int;

-- BIGINT Example
SET @bigint := 9223372036854775807;
SELECT @bigint;


----

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

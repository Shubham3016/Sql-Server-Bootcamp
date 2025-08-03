-- SMALLINT Example (Range: -32,768 to +32,767)
DO $$
DECLARE
    my_smallint SMALLINT := 32767;
BEGIN
    RAISE NOTICE 'SMALLINT: %', my_smallint;
END $$;

-- INTEGER Example (Range: -2,147,483,648 to +2,147,483,647)
DO $$
DECLARE
    my_integer INTEGER := 2147483647;
BEGIN
    RAISE NOTICE 'INTEGER: %', my_integer;
END $$;

-- BIGINT Example (Range: -9,223,372,036,854,775,808 to +9,223,372,036,854,775,807)
DO $$
DECLARE
    my_bigint BIGINT := 9223372036854775807;
BEGIN
    RAISE NOTICE 'BIGINT: %', my_bigint;
END $$;


---------------------------------------------------------------------------------------------------

DO $$
DECLARE
    my_decimal NUMERIC(10,2) := 12345.67;
    my_numeric DECIMAL(7,3) := 123.456;
    my_real REAL := 98.6;
    my_double DOUBLE PRECISION := 1234567.89;
BEGIN
    RAISE NOTICE 'DECIMAL: %', my_decimal;
    RAISE NOTICE 'NUMERIC: %', my_numeric;
    RAISE NOTICE 'REAL: %', my_real;
    RAISE NOTICE 'DOUBLE: %', my_double;
END
$$;


---------------------------------------------------------------------------------------------------

DO $$
DECLARE
    my_char CHAR(1) := 'A';
    my_varchar VARCHAR(20) := 'Hello, PostgreSQL!';
    my_text TEXT := 'This is a longer text stored in TEXT type variable';
BEGIN
    RAISE NOTICE 'CHAR: %', my_char;
    RAISE NOTICE 'VARCHAR: %', my_varchar;
    RAISE NOTICE 'TEXT: %', my_text;
END
$$;


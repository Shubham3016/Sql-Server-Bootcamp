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

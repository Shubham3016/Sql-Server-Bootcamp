
------------------------------------------------------------------------
--Exact numeric data types
------------------------------------------------------------------------

--This data type will store exact numbers such as Number Integer. 
--They have their own lower, upper limit, and memory requirements.
--They have their own memory needs, as well as a lower and upper limit. 
--It is also necessary to use the lowest data type to save memory requirements. 

-- NUMBER Example (Generic numeric type)
DECLARE
    n NUMBER(5) := 12345;
BEGIN
    DBMS_OUTPUT.PUT_LINE('NUMBER: ' || n);
END;
/

-- INTEGER Example
DECLARE
    i INTEGER := 2147483647;
BEGIN
    DBMS_OUTPUT.PUT_LINE('INTEGER: ' || i);
END;
/



-----------------------------------------------------------------------------


DECLARE
    my_number NUMBER(10,2) := 12345.67;
    my_numeric NUMBER(7,3) := 123.456;
    my_binary_float BINARY_FLOAT := 98.6;
    my_binary_double BINARY_DOUBLE := 1234567.89;
BEGIN
    DBMS_OUTPUT.PUT_LINE('NUMBER: ' || my_number);
    DBMS_OUTPUT.PUT_LINE('NUMERIC: ' || my_numeric);
    DBMS_OUTPUT.PUT_LINE('BINARY_FLOAT: ' || my_binary_float);
    DBMS_OUTPUT.PUT_LINE('BINARY_DOUBLE: ' || my_binary_double);
END;
/

------------------------------------------------------------------------------------------


DECLARE
    my_char CHAR(1) := 'A';
    my_varchar2 VARCHAR2(20) := 'Hello, Oracle!';
    my_clob CLOB := 'This is a longer text stored in CLOB type variable';
BEGIN
    DBMS_OUTPUT.PUT_LINE('CHAR: ' || my_char);
    DBMS_OUTPUT.PUT_LINE('VARCHAR2: ' || my_varchar2);
    DBMS_OUTPUT.PUT_LINE('CLOB: ' || my_clob);
END;
/


-----------------------------------------------------------------------------------------------------------------------

DECLARE
    my_date DATE := TRUNC(SYSDATE);  -- current date without time
    my_timestamp TIMESTAMP := SYSTIMESTAMP;  -- current timestamp with fractional seconds
    my_tz TIMESTAMP WITH TIME ZONE := SYSTIMESTAMP;  -- current timestamp with time zone
    my_tsl TIMESTAMP WITH LOCAL TIME ZONE := SYSTIMESTAMP;  -- current timestamp with local time zone
BEGIN
    DBMS_OUTPUT.PUT_LINE('DATE: ' || TO_CHAR(my_date, 'YYYY-MM-DD'));
    DBMS_OUTPUT.PUT_LINE('TIMESTAMP: ' || TO_CHAR(my_timestamp, 'YYYY-MM-DD HH24:MI:SS.FF'));
    DBMS_OUTPUT.PUT_LINE('TIMESTAMP WITH TIME ZONE: ' || TO_CHAR(my_tz, 'YYYY-MM-DD HH24:MI:SS.FF TZR'));
    DBMS_OUTPUT.PUT_LINE('TIMESTAMP WITH LOCAL TIME ZONE: ' || TO_CHAR(my_tsl, 'YYYY-MM-DD HH24:MI:SS.FF'));
END;
/



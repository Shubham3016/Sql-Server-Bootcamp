
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

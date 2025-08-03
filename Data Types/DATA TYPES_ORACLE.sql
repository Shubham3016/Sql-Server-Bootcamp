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

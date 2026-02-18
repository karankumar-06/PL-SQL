--wap to simple intrest

DECLARE
    principal NUMBER := 2000;
    rate NUMBER := 5;
    time NUMBER := 3;
    simple_interest NUMBER;
BEGIN
    simple_interest := (principal * rate * time) / 100;
    DBMS_OUTPUT.PUT_LINE('Simple Interest is: ' || simple_interest);
END;
/

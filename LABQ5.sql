--wap convert celsius to fahrenheit.

DECLARE
    celsius NUMBER;
    fahrenheit NUMBER;
BEGIN
    -- Accept input from user
    celsius := &celsius;

    -- Conversion formula
    fahrenheit := (celsius * 9 / 5) + 32;

    -- Display output
    DBMS_OUTPUT.PUT_LINE('Temperature in Celsius: ' || celsius);
    DBMS_OUTPUT.PUT_LINE('Temperature in Fahrenheit: ' || fahrenheit);
END;
/

--wap to find qube and square

DECLARE
    num NUMBER := 4;
    square NUMBER;
    cube NUMBER;
BEGIN
    square := num * num;
    cube := num * num * num;

    DBMS_OUTPUT.PUT_LINE('Number is: ' || num);
    DBMS_OUTPUT.PUT_LINE('Square is: ' || square);
    DBMS_OUTPUT.PUT_LINE('Cube is: ' || cube);
END;
/

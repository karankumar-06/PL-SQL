
DECLARE
    v_rollno RESULT.Rollno%TYPE;
    v_total RESULT.Total%TYPE;
    v_per RESULT.Per%TYPE;
    v_grade RESULT.Grade%TYPE;
BEGIN
    v_rollno := &rollno;

    SELECT Sub1 + Sub2 + Sub3 + Sub4 + Sub5
    INTO v_total
    FROM RESULT
    WHERE Rollno = v_rollno;

    v_per := v_total / 5;

    IF v_per >= 75 THEN
        v_grade := 'A';
    ELSIF v_per >= 60 THEN
        v_grade := 'B';
    ELSIF v_per >= 50 THEN
        v_grade := 'C';
    ELSE
        v_grade := 'F';
    END IF;

    UPDATE RESULT
    SET Total = v_total,
        Per = v_per,
        Grade = v_grade
    WHERE Rollno = v_rollno;

    DBMS_OUTPUT.PUT_LINE('Roll No: ' || v_rollno);
    DBMS_OUTPUT.PUT_LINE('Total: ' || v_total);
    DBMS_OUTPUT.PUT_LINE('Percentage: ' || v_per);
    DBMS_OUTPUT.PUT_LINE('Grade: ' || v_grade);
END;
/

--WAP TO DISPLAY RECOARD OF MALE WORKING MALE AS A HR

SET SERVEROUTPUT ON;

BEGIN
    FOR rec IN (
        SELECT empno, ename, dept, gender
        FROM emp
        WHERE gender = 'Male'
          AND dept = 'HR'
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Emp No: ' || rec.empno ||
            ', Name: ' || rec.ename ||
            ', Dept: ' || rec.dept
        );
    END LOOP;
END;
/

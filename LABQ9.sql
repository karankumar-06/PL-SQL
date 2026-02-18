--Write a PL/SQL block which displays all records of Male employees working in HR Dept from EMP table.

SET SERVEROUTPUT ON;

DECLARE
BEGIN
    FOR emp_record IN (
        SELECT * FROM EMP
        WHERE GENDER = 'Male'
        AND DEPT = 'HR'
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'EMPNO: ' || emp_record.EMPNO ||
            ' | Name: ' || emp_record.ENAME ||
            ' | Gender: ' || emp_record.GENDER ||
            ' | Dept: ' || emp_record.DEPT ||
            ' | Salary: ' || emp_record.SALARY
        );
    END LOOP;
END;
/

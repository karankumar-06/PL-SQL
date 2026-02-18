--Write a PL/SQL block to delete the record of employee for given ENO.

SET SERVEROUTPUT ON;

DECLARE
    v_ENO EMP.EMPNO%TYPE := &ENO;  -- User will enter Employee ID
BEGIN
    DELETE FROM EMP
    WHERE EMPNO = v_ENO;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee with ID ' || v_ENO || ' deleted successfully.');
        COMMIT;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee with ID ' || v_ENO || ' does not exist.');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
        ROLLBACK;

END;
/
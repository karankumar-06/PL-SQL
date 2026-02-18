--Write a PL/SQL block which accepts measurement in feet and
displays it in cm, inch and meter.

DECLARE
    feet NUMBER;
    cm NUMBER;
    inch NUMBER;
    meter NUMBER;
BEGIN
    -- Accept input from user
    feet := &feet;

    -- Conversions
    inch := feet * 12;
    cm := inch * 2.54;
    meter := cm / 100;

    -- Display output
    DBMS_OUTPUT.PUT_LINE('Measurement in Feet: ' || feet);
    DBMS_OUTPUT.PUT_LINE('In Inches: ' || inch);
    DBMS_OUTPUT.PUT_LINE('In Centimeters: ' || cm);
    DBMS_OUTPUT.PUT_LINE('In Meters: ' || meter);
END;
/

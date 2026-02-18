DECLARE
    product_name VARCHAR2(50);
    qty NUMBER;
    price NUMBER;
    discount_percent NUMBER;
    total_amount NUMBER;
    discount_amount NUMBER;
BEGIN
    -- Accepting input from user
    product_name := '&product_name';
    qty := &qty;
    price := &price;
    discount_percent := &discount_percent;

    -- Calculations
    total_amount := qty * price;
    discount_amount := (total_amount * discount_percent) / 100;

    -- Display output
    DBMS_OUTPUT.PUT_LINE('Product Name: ' || product_name);
    DBMS_OUTPUT.PUT_LINE('Total Amount: Rs. ' || total_amount);
    DBMS_OUTPUT.PUT_LINE('Discount (' || discount_percent || '%): Rs. ' || discount_amount);
END;
/

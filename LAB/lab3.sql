set serveroutput on
clear screen

declare
    p_name      varchar2(50) := '&product_name';
    qty         number := &quantity;
    price       number := &price;
    discount    number := &discount_percent;

    total_amt   number;
    disc_amt    number;
    final_amt   number;
begin
    total_amt := qty * price;
    disc_amt := (total_amt * discount) / 100;
    final_amt := total_amt - disc_amt;

    dbms_output.put_line('Product Name    : ' || p_name);
    dbms_output.put_line('Quantity        : ' || qty);
    dbms_output.put_line('Price per Unit  : Rs. ' || price);
    dbms_output.put_line('Total Amount    : Rs. ' || total_amt);
    dbms_output.put_line('Discount (' || discount || '%) : Rs. ' || disc_amt);
    dbms_output.put_line('Final Amount    : Rs. ' || final_amt);
end;
/
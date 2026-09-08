set serveroutput on
declare
    a number := 10;
    b number := 0;
    result number;
begin
    result := a / b;
    dbms_output.put_line('result = ' || result);

exception
    when zero_divide then
        dbms_output.put_line('error: cannot divide by zero.');
end;
/
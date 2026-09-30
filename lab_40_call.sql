set serveroutput on

declare
    xactno number := &xactno;
    xbalance number;
begin
    xbalance := find_bal(xactno);

    dbms_output.put_line('balance = ' || xbalance);
end;
/
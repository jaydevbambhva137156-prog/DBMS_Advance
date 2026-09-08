set serveroutput on
declare
    a number := 10;
    b number := 0;
    result number;
begin
    result := a / b;
    dbms_output.put_line('result = ' || result);

exception
    when others then
        dbms_output.put_line('sqlcode = ' || sqlcode);
        dbms_output.put_line('sqlerrm = ' || sqlerrm);
end;
/
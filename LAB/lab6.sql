set serveroutput on;
clear screen;

declare
    n number := &n;
    i number:=1;
begin
    dbms_output.put_line(' Simple loop');

    loop
        exit when i > n;
        dbms_output.put_line(i);
        i := i + 1;
    end loop;

    dbms_output.put_line(' While loop');
   dbms_output.put_line(' ');
     i := 1;
    while i <= n
    loop
        dbms_output.put_line(i);
        i := i + 1;
    end loop;

    dbms_output.put_line('For loop');
   dbms_output.put_line(' ');
    for j in 1..n
    loop
        dbms_output.put_line(j);
    end loop;
end;
/
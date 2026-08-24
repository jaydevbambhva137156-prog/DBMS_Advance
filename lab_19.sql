-- program to display records using order by clause with explicit cursor

set serveroutput on

declare
    cursor c1 is select * from emp2 order by ename;
    e emp2%rowtype;

begin
    open c1;

    loop
        fetch c1 into e;
        exit when c1%notfound;

        dbms_output.put_line('employee id : ' ||e.eid);
        dbms_output.put_line('employee name : ' || e.ename);
        dbms_output.put_line('department no : ' || e.deptno);
        dbms_output.put_line('-------------------------');
    end loop;

    close c1;
end;
/
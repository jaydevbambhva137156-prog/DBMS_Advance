set serveroutput on;
declare
    cursor c1(xdeptno number) is
        select * from emp2 where deptno=xdeptno;
    xdeptno number:=&deptno;
    no_dept_found exception;
    xcount number:=0;
begin
    for i in c1(xdeptno)
    loop
        insert into emp_backup values
        (i.eid,i.ename,i.deptno,i.deptname,i.gender,i.age,i.basicsal);
        xcount:=xcount+1;
    end loop;

    if xcount=0 then
        raise no_dept_found;
    end if;

    commit;
    dbms_output.put_line(xcount||' record(s) inserted.');
exception
    when no_dept_found then
        dbms_output.put_line('no_dept_found');
end;
/
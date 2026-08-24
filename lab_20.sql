--program to perform an update operation on the EMPLOYEE table using an implicit cursor
set serveroutput on
begin
	update emp set deptno=11 where deptno=10;

if sql%rowcount > 0
then
dbms_output.put_line(sql%rowcount ||  'Data updated Successfully:');
else
dbms_output.put_line('No Empoyee Found In Department 10');
end if;
end;
/

	
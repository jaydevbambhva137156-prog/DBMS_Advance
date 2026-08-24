--program to find 3 highest basic salary 
set serveroutput on
declare
	cursor lab4 is select eid,ename,deptno,basicsal from emp2 order by basicsal desc;
	i number;
begin
	for i in (select eid,ename,basicsal from emp2 order by basicsal desc)
	loop
	dbms_output.put_line('Employee Name : '||i.ename);
	dbms_output.put_line('Basic Salary : '||i.basicsal);
	dbms_output.put_line('----------------------------------------');
	exit when lab4%rowcount <=3;
end loop;
end;
/
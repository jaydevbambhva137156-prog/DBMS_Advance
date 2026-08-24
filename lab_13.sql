--Write a PL/SQL block that uses a cursor attribute %ROWCOUNT 
set serveroutput on;
declare
	cursor lab3 is select * from emp2 order by basicsal desc;
	e emp2%ROWTYPE;
begin
open lab3;
loop
fetch lab3 into e;
exit when lab3%notfound and lab3%rowcount<=5;
	dbms_output.put_line('Name'||e.ename);
	dbms_output.put_line('Department_no'||e.deptno);
	dbms_output.put_line('Basic_salary'||e.basicsal);
	dbms_output.put_line('---------------------------------------');
end loop;
	dbms_output.put_line('Total Number of Row : '||lab3%rowcount);
end;
/
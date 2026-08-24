--program to use like Operator using cursor FOR Loop
set serveroutput on;
declare
	i number;
	cursor lab8 is select empid,ename,deptno from emp where ename like '_e%';
	
begin
	for i in lab8
	loop
	dbms_output.put_line('Employee ID : '||i.empid);
 	dbms_output.put_line('Employee Name : '||i.ename);
	dbms_output.put_line('Employee Dept : '||i.deptno);
	dbms_output.put_line('------------------------------------------');

end loop;
end;
/
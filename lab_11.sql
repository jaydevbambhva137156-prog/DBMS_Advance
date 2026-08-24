--program to raise the basic salary of employees by 10% that are working in department number 10
set serveroutput on

begin
	update emp2 set basicsal=basicsal +(basicsal * 0.10) where deptno=10;

	if sql%rowcount > 0 then 
	dbms_output.put_line(sql%rowcount||  'Employee salary Updated sucsuccessfully :');
	else 
	dbms_output.put_line('No Employee Found in Department 10.');
	end if;
	commit;

end;
/
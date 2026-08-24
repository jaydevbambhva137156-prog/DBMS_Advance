--program to use a parameterized cursor that displays the department wise basic salary
set serveroutput on

declare
cursor c1(dno number) is select deptno, ename, basicsal, basicsal * 1.10 as grosssal from emp2 where deptno = dno;
total_gross number := 0;

begin

    	for d in (select distinct deptno from emp2 order by deptno)
loop

        	dbms_output.put_line('department no : ' || d.deptno);
        	total_gross := 0;

        	for e in c1(d.deptno)
        	loop

            	dbms_output.put_line('employee : ' || e.ename);
	dbms_output.put_line('  basic salary : ' || e.basicsal);
                	dbms_output.put_line('  gross salary : ' || e.grosssal);
	dbms_output.put_line('  ---------------------------------------');
            
            	total_gross := total_gross + e.grosssal;
end loop;

        	dbms_output.put_line('department total gross salary : ' || total_gross);

        	dbms_output.put_line('----------------------------------');
end loop;

end;
/
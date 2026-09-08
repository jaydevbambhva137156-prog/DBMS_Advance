set serveroutput on;
declare
	empid number(3):=&empid;
	enm char(20);
	basesal number(5);	
begin
	select ename,basicsal into enm,basesal from emp2 where eid=empid;
	
	dbms_output.put_line('Employee Name:'||enm);
	dbms_output.put_line('Basic Salary:'||basesal);

	exception
	when NO_DATA_FOUND then 
		dbms_output.put_line('No Data Available Found In: '||empid);

end;
/
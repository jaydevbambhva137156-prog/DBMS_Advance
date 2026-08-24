--program to uses a cursor attribute %ISOPEN and %NOTFOUND
set serveroutput on

declare
    	cursor c1 is
        	select eid, ename, deptno, deptname, gender, age, basicsal
        	from emp2
        	where deptno = 20;

    	xeid emp2.eid%type;
   	 xename emp2.ename%type;
    	xdeptno emp2.deptno%type;
    	xdeptname emp2.deptname%type;
    	xgender emp2.gender%type;
    	xage emp2.age%type;
    	xbasicsal emp2.basicsal%type;

begin
open c1;

    	if c1%isopen then
        	dbms_output.put_line('Cursor is Open.');
  	end if;
loop
        	fetch c1 into xeid, xename, xdeptno, xdeptname,xgender, xage, xbasicsal;
        	exit when c1%notfound;

        	update emp2
        	set basicsal = basicsal * 1.05
        	where eid = xeid;

        	insert into emp2_update values(xeid, xename, xdeptno, xdeptname,xgender, xage, xbasicsal * 1.05);
        	dbms_output.put_line('Salary updated for Employee : ' || xename);
end loop;
close c1;
dbms_output.put_line('Salary increment process completed.');

end;
/
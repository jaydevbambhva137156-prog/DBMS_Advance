set serveroutput on
declare
    	eid emp2.eid%type;
    	ename emp2.ename%type;
    	deptno emp2.deptno%type;
    	deptname emp2.deptname%type;
   	gender emp2.gender%type;
    	age emp2.age%type;
    	basicsal emp2.basicsal%type;
    
cursor c1 is
        	select eid, ename, deptno, deptname, gender, age, basicsal  from emp2  where deptno = '&dept_no';
   	 no_dept_found exception;
begin
    open c1;
    	fetch c1 into eid, ename, deptno, deptname, gender, age, basicsal;
    	if c1%notfound then
        	raise no_dept_found;
    	end if;
    loop
        	insert into emp_backup
       	values(eid, ename, deptno, deptname, gender, age, basicsal);
        	fetch c1 into eid, ename, deptno, deptname, gender, age, basicsal;
        	exit when c1%notfound;
    	end loop;
    close c1;
    dbms_output.put_line('records inserted successfully.');

exception
    when no_dept_found then
        dbms_output.put_line('no records found for entered dept_no.');
end;
/

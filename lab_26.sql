set serveroutput on
declare
  	enm emp2.ename%type;
	id number(3):=&id;
begin
    	select ename into enm from emp2 where eid = id;
    	dbms_output.put_line('employee name: ' || enm);

exception
    	when no_data_found then
        	dbms_output.put_line('no employee found in : '||id);
end;
/

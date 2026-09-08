--program to use exception
set serveroutput on
declare
	d1 number:=&d1;
	d2 number:=&d2;
	r number;
begin
	dbms_output.put_line('Value 1: '||d1);
	dbms_output.put_line('Value 2: '||d2);
	r:= d1/d2;
	dbms_output.put_line('Answer: '||r);

	exception 
	when ZERO_DIVIDE then
	dbms_output.put_line('Number 2 Must be > 0');
end;
/
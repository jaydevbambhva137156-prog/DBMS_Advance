set serveroutput on
declare
	x number:=&x;
	ans number;
begin
	ans:=fun_square(x);
	dbms_output.put_line('Square = : '||ans);
end;
/
set serveroutput on
declare
	xsrno number:=&xsrno;
	xcomm number;
	null_comm EXCEPTION;
begin
	select comm into xcomm from sdata where xsrno=sro;
	if xcomm IS null then
	Raise null_comm;
else
	dbms_output.put_line('comm is = '||xcomm);
end if;
EXCEPTION
	WHEN null_comm then
	RAISE_APPLICATION_ERROR(-20202,'Commission is not entered');
end;
/
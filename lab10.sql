--program 10  to delete the record as per emp id 
set serveroutput on
clear screen
Declare
	enum number(3):=&enum;
Begin
	delete from emp where EMPID=enum;
	commit;
	dbms_output.put_line('Record Deleted');
End;
/
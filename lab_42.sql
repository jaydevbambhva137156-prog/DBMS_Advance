create or replace trigger def_2
before insert on emp_sal
for each row 
Begin
	if :NEW.salary > 50000 then 
	raise_application_error(-20068,'You Can Not Enter value Above 5000');
end if; 
end def_2;
/
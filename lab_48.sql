create or replace trigger check_salary
before insert on emp_sal
for each row
begin
	if :new.salary>50000 then
	raise_application_error(-20199,'salary cannot be greater than 50000');
	end if;
end;
/
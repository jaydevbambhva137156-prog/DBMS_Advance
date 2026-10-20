create or replace trigger emp_ins
	after insert on emp_sal
	for each row
	begin
   	insert into new_emp_sal
    	values (:new.eid, :new.ename, :new.salary);
end emp_ins;
/
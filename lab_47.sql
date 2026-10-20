create or replace trigger emp_update
after update on emp_sal
for each row
begin
    insert into new_emp_sal
    values (:old.eid, :old.ename, :old.salary);
end;
/
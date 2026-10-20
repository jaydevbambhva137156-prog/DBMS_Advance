create or replace trigger emp_de_46
after delete on emp_sal
for each row
begin
    insert into new_emp_sal
    values (:old.eid, :old.ename, :old.salary);
end;
/
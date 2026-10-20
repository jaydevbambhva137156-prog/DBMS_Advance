create or replace trigger gender_check
before insert on emp2
for each row
begin
    if upper(:new.gender) = 'MALE' then
        :new.ename := 'MR. ' || :new.ename;
    elsif upper(:new.gender) = 'FEMALE' then
        :new.ename := 'MS. ' || :new.ename;
    end if;
end;
/

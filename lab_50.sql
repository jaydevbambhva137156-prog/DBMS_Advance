create or replace trigger restrict_sunday
before insert or update or delete on account
begin
    if trim(to_char(sysdate, 'DAY')) = 'SUNDAY' then
        raise_application_error(-20010, 'Bank Holiday');
    end if;
end restrict_sunday;
/
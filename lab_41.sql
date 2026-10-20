create or replace trigger restrict_access 
before insert or update or delete 
on account
begin
	if trim(to_char(sysdate,'day')) in ('saturday','sunday') then
        	raise_application_error(-20001, 'Table access is not allowed on weekends');
    end if;
end;
/
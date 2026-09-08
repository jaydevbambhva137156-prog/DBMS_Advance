set serveroutput on
declare
    eage emp2.age%type;
    esalary emp2.basicsal%type;
begin
    eage := '&age';

    select basicsal into esalary from emp2 where age = eage;

    dbms_output.put_line('age: ' || eage);
    dbms_output.put_line('salary: ' || esalary);

exception
    when no_data_found then
        dbms_output.put_line('employee with the given age not found.');
    when too_many_rows then
        dbms_output.put_line('multiple employees found with the given age.');
end;
/

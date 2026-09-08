set serveroutput on
declare
    sname marks.name%type;
    r marks.result%type;
begin
    sname := '&student_name';

    select result into r from marks where name = sname;
    dbms_output.put_line('student name: ' || sname);
    dbms_output.put_line('result: ' || r);

exception
    when no_data_found then
        dbms_output.put_line('student name not found in the result table.');
end;
/

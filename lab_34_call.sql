set serveroutput on

Declare
    xs number:= &xs;
    ans number;
Begin
    ans := fun_square(xs);
  dbms_output.put_line('Square of number is = ' || ans);
end;
/
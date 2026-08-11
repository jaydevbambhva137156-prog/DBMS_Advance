--program to find square and cube of number
set serveroutput on

Declare
    num number:= &num;
    sq number;
    cube number;

Begin
    sq := num * num;
    cube := num * num * num;

     dbms_output.put_line('Entered Number : ' || num);
     dbms_output.put_line('Square Of NUmber : ' || sq);
     dbms_output.put_line('Cube Of NUmber  : ' || cube);

End;
/
Write a PL/SQL block to accept product name, qty and
price from user and then calculate discount in Rs. based on the
given (%).
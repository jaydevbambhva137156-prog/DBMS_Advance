--program no 7
set serveroutput on;

declare
    xrollno number(3) := &xrollno;
    xname char(20);
    xsub1 number(3);
    xsub2 number(3);
    xsub3 number(3);
    xsub4 number(3);
    xsub5 number(3);
    xtotal number(3);
    xper number(5,2);
    xgrade char(1);

begin
    select name, sub1, sub2, sub3, sub4, sub5  into xname, xsub1, xsub2, xsub3, xsub4, xsub5 from result where rollno = xrollno;

    xtotal := xsub1 + xsub2 + xsub3 + xsub4 + xsub5;
    xper := xtotal / 5;

if xper >= 80 then
    update result set total=xtotal, per=xper, grade='A' where rollno=xrollno;
    commit;

elsif xper >= 60 then
    update result set total=xtotal, per=xper, grade='B' where rollno=xrollno;
    commit;

elsif xper >= 50 then
    update result set total=xtotal, per=xper, grade='C' where rollno=xrollno;
    commit;

elsif xper >= 40 then
    update result set total=xtotal, per=xper, grade='D' where rollno=xrollno;
    commit;

else
    update result set total=xtotal, per=xper, grade='F' where rollno=xrollno;
    commit;
end if;

    commit;

    dbms_output.put_line('Roll no : ' || xrollno);
    dbms_output.put_line('Name    : ' || xname);
    dbms_output.put_line('Total   : ' || xtotal);
    dbms_output.put_line('Per     : ' || xper);
    dbms_output.put_line('Grade   : ' || xgrade);

end;
/
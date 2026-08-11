--program to find cm inch and meter
set serveroutput on

declare
   	feet number:=&number;
	cm number;
	inch number;
	meter number;
begin
	inch:=feet*12;
	cm:=feet*30.48;
	meter:=feet*0.3048;

	dbms_output.put_line('Measurement in Feet : ' || feet);
	dbms_output.put_line('Measurement in Inch : ' || inch);
	dbms_output.put_line('Measurement in CM : ' || cm);
	dbms_output.put_line('Measurement in Meter: ' || meter);
end;
/
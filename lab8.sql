--PROGRAM 8
SET SERVEROUTPUT ON 
clear screen

declare
	xeid number(3):=&xeid;
	basics number(5);
	xhra number(10,2);
	xda number(10,2);
	xmedical number(10,2);
	xpf number(10,2);
	xgross number(10,2);
begin
	select basicsal into basics from emp2 where eid=xeid;
		
	xhra := basics  *  0.15;
	xda :=  basics * 0.50;
	xmedical := 500;
	xpf := basics * 0.10;
	
	--formula
	xgross := basics + xda + xhra + xmedical - xpf;
	
	dbms_output.put_line('Employee ID : ' || xeid);
   	dbms_output.put_line('Basic Salary : ' || basics);
	dbms_output.put_line('DA : ' || xda);
    	dbms_output.put_line('HRA : ' ||xhra);
    	dbms_output.put_line('Medical : ' || xmedical);
    	dbms_output.put_line('PF : ' || xpf);
    	dbms_output.put_line('Gross Salary : ' || xgross);
end;
/
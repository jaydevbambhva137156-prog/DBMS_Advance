--program to use Explicit Cursor in marks table
set serveroutput on 
declare 
	cursor lab7 is select CID,cname,city,country from customer;
		
	xcid    customer.cid%type;
	xname customer.cname%type;
	xcity customer.city%type;
	xcountry customer.country%type;
	
begin
	open lab7;
	loop
	fetch lab7  into xcid,xname,xcity,xcountry;
	exit when lab7%notfound;

	dbms_output.put_line('Customer ID :'||xcid);
	dbms_output.put_line('Customer Name :'||xname);
	dbms_output.put_line('City :'||xcity);
	dbms_output.put_line('Country :'||xcountry);
	dbms_output.put_line('--------------------------------');
	end loop;	
	close lab7;
	
end;
/
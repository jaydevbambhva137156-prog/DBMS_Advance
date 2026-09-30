create or replace function find_bal(xactno in number)
return number
is
	xbalance number;
begin
	select  BALANCE into xbalance from account where  ACTNO=xactno;
	return xbalance;	
end find_bal;
/
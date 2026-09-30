create or replace function find_bal(xactno in number)
return number
is
    xbalance number;
begin
    select balance
    into xbalance
    from account
    where actno = xactno;

    return xbalance;
end find_bal;
/
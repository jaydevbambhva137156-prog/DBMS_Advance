create or replace function fun_square(x in number)
return number
is
	ans number;
begin
	ans:=x*x ;
	return ans;
end fun_square;
/
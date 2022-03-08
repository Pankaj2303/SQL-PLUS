create or replace function ncr(n number ,r number)
return number is
n1 number:=fact(n);
r1 number:=fact(r);
nr1 number:=fact(n-r);
result number;
begin
result:=(n1)/(r1*nr1);
return result;
end;
/
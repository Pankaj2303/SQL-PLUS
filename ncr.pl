declare
n number;
r number;
result number;
begin
n:=&n;
r:=&r;
result:=ncr(n,r);
dbms_output.put_line('nCr:'||result);
end;
/
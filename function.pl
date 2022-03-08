create or replace function fact(n number)
return number is
a number:=n;
f number:=1;
i number;
begin
for i in 1..n
loop
f:=f*a;
a:=a-1;
end loop;
return f;
end;
/
program sole;
uses crt;
var a,b,t:int64;
procedure nhap;
begin
readln(a,b);
end;
procedure giai;
begin
t:=0;
if a mod 2 = 0 then dec(a) else dec(a,2);
if b mod 2 = 0 then dec(b);
while a<b do
begin
inc(a,2);
t:=t+a;
end;
write(t);
end;
begin
clrscr;
nhap;
giai;
end.

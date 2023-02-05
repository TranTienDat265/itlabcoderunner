program ham;
var n:integer;
procedure nhap;
begin
readln(n);
end;
procedure giai;
begin
if n<-4 then write(n+5)
else if (n>=-4) and (n<=7) then write((n*n)-(3*n))
else write((n*n*n)+(2*n));
end;
begin
nhap;
giai;
end.
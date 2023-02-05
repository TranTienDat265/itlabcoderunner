program chiahet;
var n,i,dem:int64;
procedure nhap;
begin
readln(n);
end;
procedure giai;
begin
write(((n div 3) + (n div 7)) - (n div 21));
end;
begin
nhap;
giai;
end.

program thuephong;
var a,b,k,res:byte;
procedure nhap;
begin
readln(a,b,k);
end;
procedure giai;
begin
res:=0;
if a mod k = 0 then inc(res,a div k) else inc(res, (a div k)+1);
if b mod k = 0 then inc(res,b div k) else inc(res, (b div k)+1);
write(res);
end;
begin
nhap;
giai;
end.
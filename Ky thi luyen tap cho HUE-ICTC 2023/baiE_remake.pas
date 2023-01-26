program baiE;
uses crt;
var a:array [1..1000000] of integer;
i,j,dem,n,tich,dem_result,so:integer;
ok:boolean;
begin
clrscr;
readln(so);
i:=1;
if so <> 1 then begin
while ok<>true do
begin
inc(i);   j:=2; tich:=1; n:=i;dem:=0;
while n>1 do
begin
if n mod j=0 then
begin
n:=n div j; inc(dem); if n=1 then tich:=tich*(dem+1);
end else
begin
inc(j); tich:=tich*(dem+1); dem:=0;
end;
end;
if tich=so then begin write(i); break; end;
end;
end
else write(1);
readln;
end.

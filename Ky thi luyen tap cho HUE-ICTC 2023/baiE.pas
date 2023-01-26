program baiE;
uses crt;
var i,n,j,so,dem:int64;
begin
clrscr;
readln(n);
i:=0;
while dem<n do
begin
inc(i);
dem:=0;
j:=0;
while j<sqr(i) do
begin
inc(j);
if i mod j = 0 then  inc(dem);
end;
if dem=n then begin so:=i;break; end;
end;
write(so);
readln;
end.

program kimcuong;
var a,luu:array [1..1000] of integer;
k,i,j,n,dem:integer;
procedure nhap;
begin
readln(n,k);
for i:=1 to n do readln(a[i]);
end;
procedure giai;
begin
for i:=1 to n-1 do
for j:=i+1 to n do
if (abs(a[i]-a[j])<= k) and (luu[i]<=0) and (luu[j]<=0) then begin
inc(dem);
writeln(a[i],'  ',a[j]);
inc(luu[i]);
inc(luu[j]);
end;
write(dem);
end;
begin
write(abs(4-1));
nhap;
giai;
end.
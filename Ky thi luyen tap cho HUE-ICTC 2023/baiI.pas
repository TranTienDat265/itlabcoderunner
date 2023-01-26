program baiI;
uses crt;
var i,n,m,dem,tam,so:int64;
a:array [1..20] of int64;
j,k,x:byte;
begin
clrscr;
readln(n,k);
for j:=1 to k do read(a[j]);
i:=1;
while i<n do
begin
inc(i);  so:=0;
for j:=1 to k do if i mod a[j] = 0 then begin  inc(so); if so=1 then inc(dem) else break; end;
end;
write(dem);
readln;
end.

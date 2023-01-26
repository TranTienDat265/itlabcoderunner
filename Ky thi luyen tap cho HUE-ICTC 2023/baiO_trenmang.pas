program nen_day_so;
uses crt;
var a,b:array[1..1000] of longint;
i,j,n,k,m,l,tong,tam,dem:longint;
f1:text;
begin

readln(n);
for i:=1 to n do a[i]:=i;
while n-1<>0 do
begin
for i:=1 to n-1 do
begin
tam:=a[i]+a[i+1];
a[i]:=tam;
end;
n:=n-1;
end;
writeln(a[1] mod 1000000000);
end.

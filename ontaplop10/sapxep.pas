program sapxep;
var a:array [1..1000] of longint;
x,y,i,j,k,n:integer;
tam:longint;
procedure nhap;
begin
readln(n,x,y);
for i:=1 to n do read(a[i]);
end;
procedure giai;
begin
for i:=1 to n-1 do
for j:=i+1 to n do
if a[i]>a[j] then
begin
tam:=a[j];
a[j]:=a[i];
a[i]:=tam;
end;
//for i:=1 to n do write(a[i],'  '); writeln;
for i:=1 to x do write(a[i],' ');
for i:=n-y+1 to n do write(a[i],' ');
end;
begin
nhap;
giai;
end.
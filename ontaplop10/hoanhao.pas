program hoanhao;
var n,i,t,j:longint;
luu:array [1..500000] of longint;
procedure nhap;
begin
readln(n);
end;
procedure giai;
begin
t:=0;
j:=0;
for i:=1 to n div 2 do if n mod i = 0 then begin inc(j); luu[j]:=i; inc(t,i); end;
if t=n then
begin
writeln('Yes');
for i:=1 to j do write(luu[i],' ');
end
else write('No');
end;
begin
nhap;
giai;
end.
program baiI_ditme;
uses crt,windows;
var a:array [1..20] of int64;
i,k,dem,n:int64;
j:byte;
time:longint;
begin
clrscr;
time:=GetTickCount;
readln(n,k);
for j:=1 to k do read(a[j]);
while i<n do
begin
inc(i);
for j:=1 to k do if i mod a[j] = 0 then begin inc(dem); break; end;
end;
write(dem);
time:=GetTickCount-time;
writeln;
write(time, ' ms');
readln;
end.
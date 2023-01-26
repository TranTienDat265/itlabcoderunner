program baiK_lan2;
uses crt;
function snt(n:longint):boolean;
var i:longint;
begin
snt:=true;
if n=1 then exit(false);
for i:=2 to trunc(sqrt(n)) do if n mod i =0 then exit(false);
end;
var x1,x2:array [1..10] of longint;
luu: array [1..100] of longint;
i,j,dem,n,nt,d:longint;
procedure try(i:longint);
var j:byte;
begin
for j:=1 to 4 do
begin
nt:=nt*10+x2[j];
        if snt(nt) then
                if i=n then begin inc(d); luu[d]:=nt; end
                else try(i+1);
        nt:=nt div 10;
end;
end;
begin
clrscr;
readln(n);
x1[1]:=2; x1[2]:=3; x1[3]:=5; x1[4]:=7; d:=0;
x2[1]:=1; x2[2]:=3; x2[3]:=7; x2[4]:=9;
if n<>1 then begin for j:=1 to 4 do begin nt:=x1[j]; try(2); end;
writeln(d);
for i:=1 to d do write(luu[i],' ');end
else begin writeln(4); for i:=1 to 4 do write(x1[i],' ');    end;
readln;
end.
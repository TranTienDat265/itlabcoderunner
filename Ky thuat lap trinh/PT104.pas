program PT104;
uses crt;
var a: array [1..1000000] of integer;
i,j,n,tong:longint;
ok:boolean;
begin
ok:=false;
clrscr;
readln(n);
for i:=1 to n do read(a[i]);
for i:=1 to n-1 do
        if ok<> true then
                begin
                tong:=a[i];
                for j:=i+1 to n do if (tong<>0) then tong:=tong+a[j] else if tong =0 then ok:=true;
                end;
if ok then write('YES') else write('NO');
end.

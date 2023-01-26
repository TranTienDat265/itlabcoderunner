program baiL;
uses crt;
function ngto(n:int64):boolean;
var i,dem:int64;
begin
dem:=0; i:=0;
while i<sqr(n) do begin inc(i); if n mod i = 0 then inc(dem); end;
if dem=2 then ngto:=true else ngto:=false;
end;
var i,n,dem,so:int64; j:integer;
ok:boolean;
a: array [1..9] of int64 = (1,10,100,1000,10000,100000,1000000,10000000,100000000);
b: array [1..9] of int64 = (9,99,999,9999,99999,999999,9999999,99999999,999999999);
c: array [1..100] of int64;
begin
clrscr;
readln(n);
j:=0; dem:=0;
if n<>9 then begin
i:=a[n];
while i<b[n] do
        begin
        inc(i); so:=i;  ok:=true;
                while so>0 do
                begin
                if ngto(so) then so:=so div 10 else begin ok:=false; break; end;
                end;
                if ok then begin inc(dem); inc(j); c[j]:=i; end;
        end;
        writeln(dem);
        for j:=1 to dem do write(c[j],'  ');
end else write(0);
readln;
end.

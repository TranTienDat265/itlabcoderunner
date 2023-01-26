program baiH;
uses crt;
function ngto(n:int64):boolean;
var i,dem:int64;
begin
dem:=0; i:=0;
while i<sqr(n) do begin inc(i); if n mod i = 0 then inc(dem); end;
if dem=2 then ngto:=true else ngto:=false;
end;
var n,m,i,j,tich:int64;
begin
clrscr;
readln(n,m);
if (n<m) and (ngto(m)) then write(m,' does not divide ',n,'!')
else
begin
i:=1;
tich:=1;
while i<n do begin inc(i); tich:=tich*n; end;
if tich mod m <>0 then write(m,' does not divide ',n,'!') else write(m,' divides ',n,'!');
end;
readln;
end.
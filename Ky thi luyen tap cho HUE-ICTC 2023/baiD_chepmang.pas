program baiD_chepmang;
uses crt;
var res,i,j:int64;
v:array [1..11] of integer = (2,3,5,7,11,13,17,19,23,29,31);
t:integer;
n:integer;
procedure try(i:integer; ans:int64; uoc:int64);
var ok:boolean;
begin
if uoc > n then exit;
if uoc = n then
        if res>ans then res:=ans;
while ok=false do
begin
inc(j);
if ans*v[i]>res then begin break; ok:=false; end;
ans:=ans*v[i];
try(i+1,ans,uoc*(j+1));
end;
end;
begin
clrscr;
readln(n);
res:=1000000000000000000;
try(0,1,1);   write(res);
readln;
end.



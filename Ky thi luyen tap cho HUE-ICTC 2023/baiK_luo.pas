uses crt;
var n,i,kt,dem:integer;
x,y,m,b:int32;
st,st1,st2,st3:shortstring;
{-------------chuong-trinh-con-kiem-tra-so-nguyen-to-----------------------}
function ktnt(var x:longint):integer;
var kt,i,kt1,j:integer;
begin
kt:=0;
for i:=2 to trunc(sqrt(x)) do
if x mod i=0 then begin
kt:=1;
break;
end;
if kt=0 then ktnt:=1
else ktnt:=0;
end;
{-------------------------------------------}
begin
clrscr;
write('Nhap n='); readln(n);
st1[1]:='1';
for i:=2 to n do
st1[i]:='0';
st:='';
for i:=1 to n do
st:=st+st1[i];
val(st,x);
for i:=1 to n do
st2[i]:='9';
st3:='';
for i:=1 to n do
st3:=st3+st2[i];
val(st3,y);

dem:=0;
for m:=x to y do
{-----------------------------------------------}
begin
begin
b:=m;
repeat
kt:=ktnt(b);
if kt=0 then break
else b:=b div 10;
until b<10;
if (ktnt(b)=1) and (b>1) then

begin

write(m,' ');

inc(dem);

end;
end;
end;

writeln;

writeln('Co ',dem,' so sieu nguyen to co ',n,' chu so');
{-------------------------------------------------}
readln;
end.

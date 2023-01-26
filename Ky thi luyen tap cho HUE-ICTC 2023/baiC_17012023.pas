program baiC;
uses crt,windows;
var fn,f0,f1:qword;
i,j,n,tong,numb:qword;
time:longint;
begin
clrscr;
time:=GetTickCount;
readln(numb,n);
if (n=1)  then write(numb)
else if n=2 then write(numb*2)
else begin
f0:=0;
f1:=1;
i:=1;
tong:=numb;
while i<n do
begin
inc(i);
fn:=f0+f1;
f0:=f1;
f1:=fn;
tong:=(tong+(fn*numb)) mod 1000000007;
end;
writeln(tong);
end;
time:=GetTickCount-time;
write(time);
readln;
end.

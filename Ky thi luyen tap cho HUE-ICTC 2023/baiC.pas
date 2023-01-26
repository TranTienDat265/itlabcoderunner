program baiC;
uses crt;
var so,tong,i,chia,fb,n,fb_1,fb_2:integer;
begin
clrscr;
readln(so,n);
chia:=so;
i:=1;
tong:=so;
fb_1:=1;
fb_2:=0;
while i< n do
begin
inc(i);
if i mod 2 = 1 then begin fb_1:=fb_1+fb_2; fb:=fb_1; end else begin fb_2:=fb_2+fb_1;  fb:=fb_2; end;
while (so div fb) <> chia do inc(so);
tong:=tong+so;
end;
write(tong mod 1000000007);
readln;
end.

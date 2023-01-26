program baiL;
uses crt;
var a:array [1..40000] of longint;
i,tam,n,tong:longint;
begin
readln(n);
if n=1 then write(0) else begin
tam:=n;tong:=0;
for i:=1 to n-1 do begin read(a[i]); tong:=tong+a[i];tam:=tam+i; end;
write(tam-tong);
end;
end.

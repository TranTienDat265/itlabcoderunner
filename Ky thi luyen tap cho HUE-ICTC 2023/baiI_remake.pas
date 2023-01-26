program baiI;
uses crt;
var a:array [1..20] of int64;
b:array [1..10000000] of int64;
i,k,dem,n,tam:int64;
j:byte;
x,y,z:integer;
begin
clrscr;
readln(n,k);
for j:=1 to k do
begin
        read(a[j]);
        i:=1;
        while i<n do
                begin
                inc(i);
                if i mod a[j] = 0 then begin  inc(z); b[z]:=i;  end;
                end;
end;
//for x:=1 to z do write(b[x],'  ');
for x:=1 to z-1 do
for y:=x+1 to z do
if b[x]<b[z] then
begin
tam:=b[x];
b[x]:=b[z];
b[z]:=tam;
end;
for x:=1 to z do if b[x]<>b[x+1] then inc(dem);
write(dem);
readln;
end.

Uses crt;
Var
  a,b:array[1..100] of longint;
  n,i,k,ka,kb,cs:byte;
{-----------------------------------------------------------------------------------------------------------------------------}
Function NT(n:longint):boolean;
Var
  i:longint;
Begin
  If (n=0) or (n=1) then
    NT:=False
  Else
    Begin
      i:=2;
      While (n mod i<>0) and (i<=sqrt(n)) do
        i:=i+1;
      If i> sqrt(n) then NT:=True
      Else NT:=False;
    End;
End;
{-----------------------------------------------------------------------------------------------------------------------------}
BEGIN
  CLrscr;
  //Write('Nhap so n:');
  Readln(n);
  ka:=1;
  a[ka]:=0;
  For i:=1 to n do
    Begin
      kb:=0;
      For k:=1 to ka do
        For cs:=0 to 9 do
          If NT(a[k]*10+cs) then
            Begin
              kb:=kb+1;
              b[kb]:=a[k]*10+cs;
            End;
      ka:=kb;
      For k:=1 to ka do
        a[k]:=b[k];
    End;
  Writeln(ka);
  For k:=1 to ka do
    Write(a[k],' ');
  Readln;
END.

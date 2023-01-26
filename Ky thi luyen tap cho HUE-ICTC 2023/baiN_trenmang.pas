uses crt;
var x: array [1..3] of int64;
i:byte;
n,res:int64;
const m =2013;
begin
readln(n);
x[1] := n; x[2] := n + 1; x[3] := 2 * n + 1;
        for i := 1 to 3 do
          if x[i] mod 2 = 0 then
            begin
              x[i] := x[i] div 2;
              Break;
            end;
        for i := 1 to 3 do
          if x[i] mod 3 = 0 then
            begin
              x[i] := x[i] div 3;
              Break;
            end;
        res := (x[1] mod m) * (x[2] mod m) * (x[3] mod m) mod m;
        write(res);
end.

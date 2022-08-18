
Program Ejercicio3a (output);

Var 
     sum,j,ind :    Integer;

Begin

     sum := 0;
     j := 10;
     For ind := 1 To 5 Do
          Begin
               sum := sum + 2 * ind + 1 + j;
               j := j - 4;
          End;
     write(sum)
End.
(*anaxchi*)
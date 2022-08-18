
Program ejercicio3b (output);

Var 
     ind,j,sum :    integer;

Const 
     TOTAL =    4;
Begin
     Begin

          sum := 0;
          For ind := 1 To TOTAL Do
               For j := 1 To ind Do
                    sum := sum + ind + j;

          writeln(sum);

     End;
End.

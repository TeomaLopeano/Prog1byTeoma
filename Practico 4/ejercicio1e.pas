
Program Ejercicio1e (output);

Var  i, j, num :    Integer;
Begin
     num := 1;
     For i := 1 To 3 Do
          Begin
               num := num + i;
               For j := 1 To num Do
                    write (j);
               writeLn (i)
          End;
End.

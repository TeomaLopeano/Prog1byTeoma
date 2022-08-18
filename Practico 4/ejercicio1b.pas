
Program Ejercicio1b (output);

Var  a, b :    Integer;
Begin
     For b := 1 To 3 Do
          Begin
               If b <= 1 Then
                    a := b - 1;
               If b <= 2 Then
                    a := a - 1
               Else
                    a := a + 1
          End;
     writeln (a)
End.

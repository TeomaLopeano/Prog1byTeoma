
Program ejercicio11;

Var 
     n,m,i,fin,anterior,divisor :    integer;

Begin

     write ('Ingrese los valores de n y m: ');
     readLn (n,m);
     anterior := 0;
     For i := n To m Do
          Begin
               divisor := 2;
               fin := trunc(sqrt(i));
               While (divisor <= fin) And (i Mod divisor <> 0) Do
                    Begin
                         divisor := divisor + 1;
                    End;
               If (divisor > fin) Then
                    Begin
                         If (i - anterior) = 2 Then
                              Begin
                                   writeln (anterior,' y ',i)
                              End;
                         anterior := i

                    End;


          End;
End.

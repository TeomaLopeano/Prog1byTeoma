
Program ejercicio10;

Var 
     n,m,i,fin,divisor :    integer;


Begin
     write ('Escriba el rango de los valores: ');
     ReadLn (n,m);

     For i := n To m Do
          Begin
               divisor := 2;
               fin := trunc(sqrt(i));
               While (divisor <= fin ) And (i Mod divisor <> 0) Do
                    Begin
                         divisor := divisor + 1;

                    End;

               If divisor > fin Then
                    Begin
                         write(i,' ');
                    End;
          End;
End.

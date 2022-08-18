
Program ejercicio12;

Var 
     expo, num, k, resto :    Integer;

Begin
     write('Digite un numero entero positivo: ');
     ReadLn(num);
     resto := 1;
     expo := 1;
     k := 0;
     While ((num Div expo) Mod 2=0) Do
          Begin
               expo := expo *2;
               k := k+1;
          End;
     If (expo = num) Then
          writeln(k,' ',resto)
     Else If (expo<num) Then
               Begin
                    resto := num Div expo;
                    writeln(k,' ',resto)
               End

End.

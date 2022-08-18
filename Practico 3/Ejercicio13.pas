
Program ejercicio13 (input,output);

Var 
     n,d,decenas,unidades,centenas, millares :    integer;

Begin
     Write('Ingrese un entero de 4 digitos: ');
     ReadLn(n);
     Write('Ingrese un entero de 1 digito: ');
     ReadLn(d);
     decenas := (n Mod 100) Div 10;
     unidades :=    n Mod 10;
     centenas := (n Mod 1000) Div 100;
     millares := n Div 1000;

     WriteLn(n:4);
     If (millares=d) Or (centenas=d) Or (decenas=d) Or (unidades=d) Then
          Begin
               If millares=d Then
                    write('+')
               Else
                    write(' ');
               If centenas=d Then
                    write('+')
               Else
                    write(' ');
               If decenas=d Then
                    write('+')
               Else
                    write(' ');
               If unidades=d Then
                    write('+')
               Else
                    Writeln(' ');
          End
     Else
          write(d,' No aparece en ',n)

End.

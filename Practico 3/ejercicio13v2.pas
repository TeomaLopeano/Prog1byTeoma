
Program ejercicio13v2 (input,output);

Var 
     n,d :    integer;
     decenas,unidades,centenas, millares :    Boolean;
Begin
     Write('Ingrese un entero de 4 digitos: ');
     ReadLn(n);
     Write('Ingrese un entero de 1 digito: ');
     ReadLn(d);
     decenas := (n Mod 100) Div 10 =d;
     unidades :=    n Mod 10 =d;
     centenas := (n Mod 1000) Div 100 =d;
     millares := n Div 1000 =d;

     WriteLn(n:4);
     If millares Or centenas Or decenas Or unidades Then
          Begin
               If millares Then
                    write('+')
               Else
                    write(' ');
               If centenas Then
                    write('+')
               Else
                    write(' ');
               If decenas Then
                    write('+')
               Else
                    write(' ');
               If unidades Then
                    write('+')
               Else
                    Writeln(' ');
          End
     Else
          write(d,' No aparece en ',n);

     ReadLn();
End.

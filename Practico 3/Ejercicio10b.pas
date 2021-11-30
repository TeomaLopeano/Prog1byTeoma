
Program Ejercicio10b (input,output);

Var 
     a:    integer;
     b:    real;
Begin
     Write('Escriba un entero de hasta cuatro cifras:');
     readLn(a);
     If (a Div 1000) > 0 Then
          Begin
               b := a / 1000;
               Write(b:4:3);
          End
     Else
          Begin
               b := a;
               Write (b:4:0)
          End
End.

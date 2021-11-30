
Program elevado (input, output);

Var 
     a, b, resultado:    Real;

Begin
     Write('Escriba la base: ');
     Read(a);
     write('Escriba el exponente: ');
     Read(b);
     resultado := Exp(b*Ln(a));
     Write('El resultado de la potencia es: ', resultado:1:1)
End.


Program elevado (input, output);

Var 
     a, b, resultado:    Real;

Begin
     Write('Escriba la base de su numero a elevar: ');
     Read(a);
     write('Escriba el exponente de su numero a elevar: ');
     Read(b);
     resultado := Exp(b*Ln(a));
     Write('El resultado de la potencia es: ', resultado:1:2)
End.

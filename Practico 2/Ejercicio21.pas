
Program Ejercicio21 (input,output);

Var 
     a, raiz, raiz2 :    real;

Begin
     Write('Escriba el valor que desea ayar la raiz cuadrada: ');
     Read(a);
     raiz := Exp(0.5*Ln(a));
     raiz2 := sqrt(a);
     WriteLn('Valor introducido: ',a);

     WriteLn('Raiz cuadrada calculada: ', raiz);

     WriteLn('Valor de Sqrt (a) = ', raiz2)

End.

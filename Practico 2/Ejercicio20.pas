
Program Ejercicio20 (inpunt,output);

Var 
     x, suma, valorexp :    real;

Begin
     Write('Escriba un numero entre 0.0 y 1.0: ');
     Read(x);
     suma := 1 + (x/ 1) + ((x*x)/ 2) + ((x*x*x)/ (3*2)) + ((x*x*x*x)/ (4*3*2));
     valorexp := exp(x);
     WriteLn('Valor introducido: ',x);
     WriteLn('Suma de los cinco terminos = ', suma);
     Write('Valor de Exp (x) = ',valorexp:17)


End.

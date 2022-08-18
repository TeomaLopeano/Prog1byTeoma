
Program ejercicio3;

Var 
     x,resultado:    real;
     coef:    integer;

Begin
     write('Ingrese el  valor de x: ');
     readLn(x);

     write ('Ingrese los coeficientes: ');
     read(coef);
     resultado := 0;
     While coef <> -1 Do
          Begin
               resultado := resultado*x +coef;
               read(coef);
          End;

     write('Resultado = ',resultado:2:0)
End.


Program ejercicio5;

Var 
     num,anterior,i,cuadrado :    Integer;

Begin
     Write('Digite un numero: ');
     ReadLn(num);
     i := 1;
     cuadrado := 1;
     Repeat
          Begin
               anterior := cuadrado;

               cuadrado := sqr(i);
               i := i + 1;

               Write (cuadrado,' ');
          End;

     Until (cuadrado - anterior) >= num;


End.

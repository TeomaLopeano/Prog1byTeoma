
Program ejercicio8;

Var 
     x,y,resultado :    real;
     i, aciertos, cantidad :    Integer ;

Begin
     randomize;
     write ('n= ');
     ReadLn(cantidad);
     aciertos  :=   0;

     For i := 1 To cantidad Do
          Begin
               x := random;
               y := random;
               If (sqr(x) + sqr(y) <= 1) Then
                    aciertos := aciertos + 1;
          End;
     resultado := 4 * (aciertos / cantidad);
     writeln (resultado:2:2)
End.

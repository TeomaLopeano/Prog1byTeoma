
Program ejercicio9;

Var 
     x1,x2,y1,y2 :    real;
     dis :    real;

Function distancia(x1,y1,x2,y2 : real) :    Real;

Begin
     distancia := Abs(sqrt (sqr(x2-x1)+sqr(y2-y1)));
End;

(*Programa principal*)
Begin

     write ('Digite las primeras cordenadas: ');
     ReadLn (x1,y1);
     Write ('Digite las segudas cordendas: ');
     ReadLn (x2,y2);
     dis := distancia (x1,y1,x2,y2);
     WriteLn ('La distacia entre los 2 puntos es: ',dis:2:2)
End.


Program Ejercicio18 (input,output);

Var 
     m, v, error :    real;

Begin

     write('Escriba el valor de m: ');
     ReadLn(m);
     Write('Escriba el valor de v: ');
     ReadLn(v);
     error := (Abs(m-v))/v;

     WriteLn('Medicion = ',m);

     WriteLn('Valor verdadero = ',v);

     write('Error relativo es = ',error)

End.

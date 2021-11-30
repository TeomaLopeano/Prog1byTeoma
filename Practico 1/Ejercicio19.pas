
Program Ejercicio19 (input,output);

Var 
     a, b, c, s, area:    real;

Begin
     Write('Escribas los lados a, b, c: ');
     Read(a,b,c);

     s := (a+b+c)/2;
     area := sqrt(s*(s-a)*(s-b)*(s-c));

     WriteLn('El area es : ',area:4:2)


End.

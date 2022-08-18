
Program ejercicio9 (input,outpuy);

Var 
     x,n,i :    Integer;
     potencia :    real;

Begin

     Write('Ingrese un valor para x: ');
     ReadLn(x);
     Write('Ingrese un valor para n: ');
     readln(n);
     potencia := 1;
     For i := 1 To n Do
          Begin
               potencia := potencia * x;
          End;
     Write('El resultado de ',x,' elevado a la ',n,' es: ',potencia:4:0)



End.

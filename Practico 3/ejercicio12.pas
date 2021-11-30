
Program ejercicio12 (input,output);

Var 
     peso, costo :    real;

Const 
     valor =    0.22;
     x =    0.17;

Begin
     Write('Indique el peso de la carta (en onzas): ');
     readln(peso);
     If (trunc(peso))=peso Then
          Begin
               costo := valor + (peso-1)*x;
               writeln('Peso  Costo');
               write(peso:2:2,'$':3,costo:1:2)
          End
     Else
          Begin
               costo := valor + (trunc(peso))*x;
               writeln('Peso  Costo');
               write(peso:2:2,'$':3,costo:1:2)
          End;

End.

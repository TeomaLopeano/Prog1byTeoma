
Program ejercicio7;

Const 
     fin =    '$';
     separador =    '|';

Var 
     car :    char;

Begin
     Write ('Su info: ');

     Repeat
          Read (car);

          If (car <> separador) And (car <> fin) Then
               write(car)
          Else WriteLn

     Until car = fin;

End.

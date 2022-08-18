
Program ejercicio10 (input,output);

Var 
     car,operador:    char;
     x,y :    integer;

Begin

     Write('Ingrese las operaciones: ');
     read(car);
     x := ord(car)-ord('0');

     Repeat
          read(operador);
     Until operador <>' ';
     While (operador <> '=') Do
          Begin
               Repeat
                    read(car);
               Until car <> ' ';
               y := ord(car)-ord('0');
               Case operador Of 
                    '+':    x := x+y;
                    '-':    x := x-y;
                    '*':    x := x*y;
                    '/':    x := x Div y;
               End;
               Repeat
                    read(operador);
               Until operador <>' ';

          End;

     WriteLn(x);
End.

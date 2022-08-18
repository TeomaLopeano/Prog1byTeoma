
Program ejercicio2;

Const 
     espacio =    ' ';
     fin =    '.';

Var 
     car,letra,coso :    char;
     cant :    Integer;

Begin
     cant := 0;
     Write ('Letra: ');
     ReadLn (letra);
     Write ('Oracion: ');
     read (car);


     While (car <> fin) Do
          Begin
               Repeat
                    read(car);
                    If (car <> espacio) And (car <> fin) Then
                         Begin
                              coso := car;
                         End
               Until (car = espacio) And (car <> fin);
               If (coso = letra) Then
                    Begin

                         cant := cant + 1;
                    End;
          End;

     WriteLn;
     write('Palabras terminadas con ',letra,' es de: ',cant)
End.

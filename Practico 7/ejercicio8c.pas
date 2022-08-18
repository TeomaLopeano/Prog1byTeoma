
Program ejercicio8c;

Var 
     caracter :    Char ;
     numero :    integer;
(*Funcion*)
Function ascii(car :char) :    integer;

Var 
     num :    integer;

Begin

     num := (ord(car));

End;

(*Programa principal*)
Begin
     write ('Digite un caracter: ');
     readln (caracter);
     numero := ascii(caracter);
     WriteLn ('Su numero es: ',numero);
End.


Program ejercicio9 (input,output);

Var 
     num,fin,divisor:    integer;

Begin
     Write('Ingrese un numero: ');
     ReadLn(num);
     fin := trunc(sqrt(num));
     divisor := 2;
     While (num <> fin) And (num Mod divisor <> 0 ) Do
          divisor := divisor +1;

     If divisor <= fin Then
          WriteLn('El numero ',num,' No es primo :(')
     Else
          WriteLn('El numero ',num,' Es primo :)')



End.

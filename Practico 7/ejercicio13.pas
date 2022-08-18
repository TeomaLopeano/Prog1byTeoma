
Program ejercicio13;

Var 
     num,nashi :    integer;

Function FacotorPrimo(n:integer):    Integer;

Var 
     fin,tope,i,divisor :    Integer;

Begin
     fin := trunc (sqrt(n));
     divisor := 2;
     While (divisor <= fin) And (n Mod divisor <>0) Do
          Begin
               Repeat

                    divisor := divisor + 1;
                    i := 2;
                    tope := trunc (sqrt(divisor));
                    While (i <= tope) And (divisor Mod i <> 0) Do
                         i := i +1;

               Until i > tope;

          End;
     If (n Mod divisor = 0) Then
          FacotorPrimo := divisor
     Else
          FacotorPrimo := n;

End;

(*Programa principal*)

Begin
     Write('Digite un numero caballero: ');
     read(num);
     While (num <> 0) Do
          Begin
               Repeat
                    nashi := FacotorPrimo(num);
                    Write (nashi);
                    num := num Div nashi;
                    If (num <> 1) Then
                         Write (' * ');

               Until num =1;
               WriteLn;
               readln(num)

          End;
End.

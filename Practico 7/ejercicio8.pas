
Program ejercicio8;

Var  n,z :    integer;


(*Funcion*)
Procedure primo (Var num : integer);

Var 
     fin,divisor :    integer;


Begin
     divisor := 2;
     fin := trunc(sqrt(num));

     While (divisor <= fin ) And (num Mod divisor <> 0) Do
          Begin
               divisor := divisor + 1;
          End;
     If divisor > fin Then
          Begin
               Repeat
                    divisor := 2;
                    num := num + 1;
                    fin := trunc(sqrt(num));
                    While (divisor <= fin ) And (num Mod divisor <> 0) Do
                         Begin
                              divisor := divisor + 1;
                         End;

               Until divisor > fin
          End;

End;




Begin
     Write ('Ingrese un numero primo: ');
     readln(n);
     z := n;
     primo (n);
     If z < n Then
          WriteLn ('El siguiente numero primo es: ',n)
     Else Writeln ('No ingreso un numero primo')
End.

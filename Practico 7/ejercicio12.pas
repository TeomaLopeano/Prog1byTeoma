
Program ejercicio12;

Var 
     n,m :    integer;

Function multiplo(num,num2 :Integer):    Boolean;

Begin
     If ((num Mod num2) = 0) Or ((num2 Mod num) = 0) Then
          multiplo := true
     Else
          multiplo := false;
End;

(*Programa principal*)

Begin
     Write ('Digite 2 numeros: ');
     Read (n);

     While (n <> -1) Do
          Begin
               readln (m);
               If multiplo(n,m) Then
                    writeLn ('True')
               Else
                    WriteLn ('False');

               read (n);
          End;

End.


Program ejercicio11;

Var 
     n,m,i,anterior :    integer;

Function EsPrimo(numero: integer):    boolean;

Var  fin,divisor:    integer;

Begin
     divisor := 2;
     fin := trunc(sqrt(numero));
     While (divisor<=fin) And (numero Mod divisor <> 0) Do
          divisor := divisor+1;
     EsPrimo := divisor > fin
End;

(*Progrma principal*)
Begin

     Write ('Digite un rango entre n y m: ');
     ReadLn (n,m);
     anterior := 0;
     For i := n To m Do
          Begin
               If EsPrimo(i) Then
                    Begin
                         If (i - anterior) = 2 Then
                              Begin
                                   writeln (anterior,' y ',i)
                              End;
                         anterior := i

                    End;


          End;
End.

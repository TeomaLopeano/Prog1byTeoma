
Program ejercicio4;

Var 
     num,contprimos,acumulador,divisores ,fin :    Integer;
     raiz :    real;

Begin

     Write('Digite un numero: ');
     readln (num);

     acumulador := 2;
     contprimos := 0;

     While contprimos < num Do
          Begin
               divisores := 2;
               fin := trunc(sqrt(acumulador));
               While (divisores <= fin) And (acumulador Mod divisores <> 0) Do
                    Begin
                         divisores := divisores + 1;

                    End;

               If divisores > fin Then
                    Begin
                         raiz := sqrt(acumulador);
                         Write (raiz:2:2,' ');
                         acumulador := acumulador + 1;
                         contprimos := contprimos + 1;
                    End
               Else acumulador := acumulador + 1;

          End;

     WriteLn


End.


Program ejercicio10 (input,output);

Var 
     n,i :    Integer;
     factorial :    real;

Begin

     Write('Ingrese un valor para n: ');
     ReadLn(n);
     factorial := 1;
     If n>=0 Then
          Begin
               For i := 1 To n Do
                    Begin

                         factorial := factorial * (i)

                    End;
               Write('El factorial de ',n,' es: ', factorial:4:0)
          End





End.


Program ejercicio6 (input,output);

Var 
     n,n1,c,mayor,menor :    integer;

Begin
     mayor := 0;
     Write('Ingrese un valor para n: ');
     ReadLn(n);
     Write('Ingrese ',n, ' enteros: ');
     Read(n1);
     For c:=1 To n-1 Do
          Begin
               If mayor<n1 Then
                    Begin
                         mayor := n1;
                         menor := mayor;
                    End;
               read(n1);
               If menor>n1 Then
                    Begin
                         menor := n1;

                    End

               Else If (mayor<n1) Then
                         Begin
                              mayor := n1;

                         End
          End;

     WriteLn('El mayor entero ingresado es: ',mayor);
     WriteLn('El menor entero ingresado es: ',menor)
End.

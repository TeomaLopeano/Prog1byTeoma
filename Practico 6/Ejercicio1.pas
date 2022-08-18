
Program ejercicio1;

Var 
     n,m,a,b,mcd :    integer;

Begin
     write('Escriba el valor de el Primer numero: ');
     ReadLn(n);
     Write('Escriba el valor del segundo numero: ');
     ReadLn(m);
     If (n>0) And (m>0) Then
          Begin
               If n>m Then
                    Begin
                         a := n;
                         b := m;
                    End
               Else
                    Begin
                         a := m;
                         b := n;
                    End;
               While b <> 0 Do
                    Begin

                         mcd := b;
                         b := a Mod b;
                         a := mcd;

                    End
          End
     Else
          Begin
               Write('NO SE PUEDE CALCULAR MCD :(')
          End;


     WriteLn('El MCD entre ',n,' y ',m,' es ',mcd)



End.

Program raices (input, output);

Var 
     a,b,c,d,x,y,i1,i2 :    Real;

Begin
     Write('Escriba los valores de a, b y c: ');
     ReadLn(a,b,c);

     d := sqr(b)-(4*a*c);



     If (d>=0) Or (x<>y) Or (d<0) Then
          Begin
               If (d>0) Then
                    Begin
                         x := (-b + sqrt (d) )/(2*a);
                         y := (-b - sqrt (d) )/(2*a);

                         Write('Las 2 raices reales son: ',x:4:2,'  y  ',y:4:2);

                    End
               Else
                    If (d=0) Then
                         Begin
                              x := (-b + sqrt (d) )/(2*a);
                              y := (-b - sqrt (d) )/(2*a);

                              write('Existe raiz doble y es: ',x:4:2);
                         End

               Else
                    If (d < 0) Then
                         Begin
                              i1 := (-b)/(2*a);
                              i2  := sqrt(-d)/(2*a);

                              Write('Las raices imaginarias son: ',i1:4:2,
                                    '  (+/-)   i*',i2:4:2);
                         End


          End

End.

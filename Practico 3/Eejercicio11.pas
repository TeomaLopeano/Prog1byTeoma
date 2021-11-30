
Program eejercicio11 (input,output);

Var 
     a, b, c, d, e, f, x, y:    real;

Begin
     WriteLn('Escriba (a,b,c,d,e,f): ');

     readLn(a,b,c,d,e,f);

     If  ((a*e - d*b) <> 0)  Then
          Begin

               x :=    (c*e - f*b) / (a*e - d*b);
               y :=    (a*f - d*c) / (a*e -d*b);

               WriteLn('x= ',x:4:2,' y ','y = ',y:4:2)


          End

     Else
          Begin
               WriteLn('Error')
          End
End.

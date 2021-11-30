
Program Ejercicio10 (input,output);

Var 
     num,millares,x :    Integer;

Begin
     write('Escriba un numero: ');
     ReadLn(num);
     If (num>999) Then
          Begin
               millares := num Div 1000;
               x := num Mod 1000;
               WriteLn(millares,'.',x)
          End
     Else

          WriteLn(num)

End.

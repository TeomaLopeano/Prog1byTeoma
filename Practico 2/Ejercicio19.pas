
Program Ejercicio19 (input,output);

Uses crt;

Var 
     numero,cuadrado,seudoaleatorio:    Integer;
Begin
     TextColor( green );
     TextBackground( black );


     Write('Digite un numero de 2 cifras: ');
     read(numero);

     cuadrado := Sqr(numero);

     seudoaleatorio := ((cuadrado Div 10) Mod 100);

     WriteLn('Numero introducido = ',numero:2);
     WriteLn('Cuadrado del numero = ',cuadrado:4);
     WriteLn('Siguiente numero seudoaleatorio = ',seudoaleatorio:2);
     ReadLn
End.

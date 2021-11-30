
Program Ejercicio17 (input,output);

Var 
     hora1, hora2, dia, minuto1, minuto2, restomin, hora3, hora4:    Integer;

Begin
     write('Escriba la primera hora y la segunda hora: ');
     ReadLn(hora1,hora2);
     hora3 := (hora1 Div 100)+(hora2 Div 100);
     minuto1 := (hora1 Mod 100)+(hora2 Mod 100);
     dia := hora3 Div 24;
     minuto2 := minuto1 Mod 60;
     restomin := minuto1 Div 60;
     hora4 := (hora3 Mod 24)+(restomin);

     Write('d hh/mm es: ',dia:1,' ',hora4:2,minuto2:2)

End.

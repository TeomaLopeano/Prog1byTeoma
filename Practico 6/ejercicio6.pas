
Program ejercicio6;

Const 
     costo =    30;
     funcionamiento =    100;


Var 
     publicidad,beneficio,benefan,ventas :    real;

Begin
     WriteLn ('Publicidad  Ventas  Beneficio neto');
     publicidad := 200;
     ventas := 20;
     beneficio := 0;
     benefan := 4;
     While benefan > 0 Do
          Begin

               beneficio := (ventas * costo) - (publicidad) - (funcionamiento);

               WriteLn (publicidad:4:0,ventas:12:0,beneficio:12:0);
               ventas := trunc(ventas + (ventas * 0.5));
               publicidad := publicidad * 2;
               benefan := benefan -1;

          End;

End.

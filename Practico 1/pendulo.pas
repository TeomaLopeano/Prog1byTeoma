
Program pendulo (input, output);

Const 
     pi =    3.14;
     g =    9.8;

Var 
     t, l:    real;

Begin
     write ('Ingrese longitud del pendulo: ');
     readln(l);
     t := 2*pi*sqrt(l/g);
     write ('El periodo del pendulo es: ', t:2:4)
End.

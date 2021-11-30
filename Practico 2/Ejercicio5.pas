
Program Ejercicio5 (output);

Var 
     a,b,c:    integer;
     x,y,z:    real;
Begin
     a := 0;
     b := 2;
     c := 1;
     x := 5.2;
     y := 3.6;
     z := 4.1;
     write ('Los valores son: ');
     write (a:4, b:4, c:4);
     writeln (x:4:1, y:4:1, z:4:1);
     writeln ('La suma es: ', x + y + z:4:1);
     writeln ('El producto es: ', a * b * c:4)
End.


Program Ejercicio14 (input, output);

Var  a, b, c, d :    char;
     r1, r2, resu :    real;
Begin
     read (a, b, c, d);
     r1 := ord(a) - ord('0');
     r2 := (ord(c) - ord('0')) * 10 + (ord(d) - ord('0'));
     resu := r1 + r2 / 100;
     write ('Valor ingresado: ', resu:4:2)
End.

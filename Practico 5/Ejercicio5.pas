
Program ejercicio5 (output);

Var 
     i:    Integer;
     x :    real;

Begin
     x := 1.5;
     i := 1;
     Repeat
          x := sqr(x);
          i := i +1;

     Until i >5;
     write (x:10:4);

End.

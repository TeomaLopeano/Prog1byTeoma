
Program ejercicio9;

Var 
     n,m,i,j,tabla :    Integer;


Begin
     write ('Ingrese un valor para n: ');
     ReadLn(n);
     write ('Ingrese un valor para m: ');
     readln (m);

     For i := n To m Do
          Begin
               WriteLn ('>>> Tabla del ',i, ' <<<');
               For j :=1 To 10 Do
                    Begin
                         tabla := i * j;
                         writeln (i,' * ',j,' = ',tabla)
                    End;
               WriteLn
          End;
     ReadLn;
End.

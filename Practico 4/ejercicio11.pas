
Program ejercicio11 (input,output);

Var 
     func,m,n,mayor,i :    integer;

Begin
     mayor := 0;
     Write('Ingrese un valor para m: ');
     readln(m);
     Write('Ingrese un valor para n: ');
     ReadLn(n);

     For i := m To n Do
          Begin
               func := sqr(i)-18*i+5;
               If func > mayor Then
                    mayor := func;
          End;
     write('El valor maximo para x en el entorno de ',m,' a ',n,' es: ',mayor)




End.

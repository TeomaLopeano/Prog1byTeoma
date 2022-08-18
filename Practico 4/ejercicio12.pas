

Program ejercicio12 (input,output);

Var 
     func,m,n,mayor,x,y :    integer;

Begin
     mayor := 0;
     Write('Ingrese un valor para n: ');
     readln(n);

     m := -n;

     For x := m To n Do

          For y := m To n Do
               Begin

                    func := sqr(x)-(9*x*y)+sqr(y);
                    If func > mayor Then
                         mayor := func;
               End;
     write('El valor maximo para x en el entorno de ',m,' a ',n,' es: ',mayor)




End.

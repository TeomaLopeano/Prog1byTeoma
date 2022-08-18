
Program ejercicio7 (input,output);

Var 
     n,n1,c,d :    integer;

Begin
     Write('Ingrese un valor para n: ');
     ReadLn(n);

     Write('Ingrese ',n,' enteros positivos: ');

     For c := 1 To n Do
          Begin
               read(n1);


               For d := 1 To n1 Do
                    Begin
                         write('*');
                    End;
               WriteLn()
          End;


End.


Program ejercicio5 (input,output);

Var 
     a,b,c :    integer;

Begin
     Write('Ingrese el numero que quiere allar divisores: ');
     ReadLn(a);

     For b  :=  a Downto 1 Do
          Begin
               If a Mod b = 0 Then
                    Begin

                         c := a Div b;
                         Write(c,' ');
                    End
          End;



End.

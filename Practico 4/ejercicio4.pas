
Program ejercicio4 (input,output);

Var 
     a,b,n,c :    Integer;

Begin
     Write('ingrese los valor de a, b y n: ');
     readln(a,b,n);

     For c := a To b Do
          Begin
               If c Mod n =0 Then
                    write(c,' ');
          End;


End.

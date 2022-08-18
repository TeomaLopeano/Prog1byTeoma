
Program ejercicio4;

Var 
     x,y,z :    Integer;

(*Procedimiento*)
Procedure girar (Var a,b,c : integer);

Var 
     aux :    Integer;
Begin
     aux := c;
     c := b;
     b := a;
     a := aux;
End;
(*Programa principal*)
Begin
     ReadLn (x,y,z);
     girar(x,y,z);
     WriteLn(x:1,y:4,z:4)


End.

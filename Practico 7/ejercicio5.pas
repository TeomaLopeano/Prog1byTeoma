
Program Ejercicio5 (output);

Var  tum, num, temp :    Integer;

Procedure Prog (a, b : Integer; Var c : Integer);

Var  aux :    Integer;
Begin
     aux := a * b;
     aux := aux + 1;
     c := aux + a;
     writeLn (a, b, c, aux)
End;

(* Programa principal *)
Begin
     tum := 1;
     num := 2;
     Prog (tum, num, temp);
     writeLn (temp);
     tum := 0;
     num := 1;
     Prog (tum, num, temp);
     writeLn (temp)
End.

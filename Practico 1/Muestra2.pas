
Program Muestra2 (input, output);

Const 
     medio =    0.5;

Var 
     num  :    Real;
     a, b :    Integer;
Begin
     readLn (num);
(* Obtener un valor para num de la entrada estandar *)
     a := round (num);
     b := trunc (num + medio);
     writeLn (num:2:2, a:2, b:2) (* Exhibir num, a, y b *)
End.

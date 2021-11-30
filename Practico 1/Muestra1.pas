
Program Muestra1 (output);

Const 
     pi =    3.1415926535;
     r1 =    2.0;
     r2 =    5.0;

Var 
     area:    Real;
Begin
     area := pi * r1 * r1;
     WriteLn (r1:1:1,' y ', area:1:2);
(* Exhibir valor de r1 y area *)
     area := pi * sqr (r2);
     writeLn (r2:1:1,' y ', area:1:2)  (* Exhibir valor de r2 y area *)
End.

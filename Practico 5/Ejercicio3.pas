
Program ejercicio3 (output);

Var 
     i,j :    Integer;

Begin

     i := 1;
     j := 2;
     Repeat
          write (i, j);
          i := i + 1;
          j := j + 1
     Until j <= 3;


End.
*)





(*
Program ejercicio3 (output);

Var 
     i,j :    Integer;

Begin

     i := 1;
     j := 1;
     While (i <= 3) And (j <= 2) Do
          Begin
               write (i, j + 1);
               i := i + 1;
               j := j + 1
          End;


End.
*)




(*
Program ejercicio3 (output);

Var 
     i,j :    Integer;

Begin

     i := 1;
     Repeat
          write (i, i + 1);
          i := i + 1
     Until i <= 3;


End.
*)
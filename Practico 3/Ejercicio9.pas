
Program Ejercicio9 (input,output);

Var 
     k,t,s,r :    Integer;

Begin
     read(k,t,s,r);

     Case k Of 

          0:    r := r + 1;
          1:    s := s + 1;
          2:    t := t + 2;
          3:    t := t + 2;
          4:    t := t + 2;

     End;
     WriteLn(k:2,t:2,s:2,r:2)
End.

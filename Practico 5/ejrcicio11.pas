
Program ejrcicio11;

Var 
     valor,s,suma,n,a,desv :    Real;

Begin

     write('ingrese los valores: ');
     readln(valor);
     s := 0;
     suma := 0;
     n := 0;
     While (valor >= 0) Do
          Begin
               s := s + sqr (valor);
               suma := suma +valor;
               n := n+1;
               read (valor);
          End;
     If (n>0) Then
          a := suma / n
     Else a := 0;
     desv := sqrt(s/n - sqr(a));
     writeln('la desviacion es: ', desv:4:2)



End.

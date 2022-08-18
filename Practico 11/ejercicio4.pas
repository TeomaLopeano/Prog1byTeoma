program ejercicio4;

type
    TTipo = (doble,simple,conjugado);

    TipoRaices = RECORD

        case tipos : TTipo of

            doble : (x3 : real);

            simple : (x1,x2 : real);

            conjugado : (z1,z2 : Real);
end;
var
    a,b,c : real;
    r1 :TipoRaices;
procedure Raices(a,b,c : Real; VAR r : TipoRaices);

Var 
     disc :    real;

Begin
     disc   := sqr(b) - 4 * a * c;

     if disc = 0 then
        r.tipos := doble
    else if disc < 0 then
        r.tipos := conjugado
    else
        r.tipos := simple;

{case r.tipos of 
    doble : r.x3 := -b / (2*a);
    doble : writeln('Existe raiz doble y es: ',r.x3:4:2);
    simple : r.x1 := (-b + sqrt(disc))/(2*a);
    simple : r.x2 := (-b - sqrt (d) )/(2*a);
    simple : WriteLn('Las 2 raices reales son: ',r.x1:4:2,'  y  ',r.x2:4:2),
    conjugado : r.z1 := (-b)/(2*a);
    conjugado : r.z2 := sqrt(-d)/(2*a);
    conjugado : Write('Las raices imaginarias son: ',r.z1:4:2,'  (+/-)   i*',r.z2:4:2);
    end;
}
            If (r.tipos= simple) Then
                    Begin
                         r.x1 := (-b + sqrt (disc) )/(2*a);
                         r.x2 := (-b - sqrt (disc) )/(2*a);

                         Write('Las 2 raices reales son: ',r.x1:4:2,'  y  ',r.x2:4:2);

                    End
               Else
                    If (r.tipos=doble) Then
                         Begin
                              r.x3 := (-b + sqrt (disc) )/(2*a);
                              

                              write('Existe raiz doble y es: ',r.x3:4:2);
                         End

               Else
                    If (r.tipos= conjugado) Then
                         Begin
                              r.z1 := (-b)/(2*a);
                              r.z2  := sqrt(-disc)/(2*a);

                              Write('Las raices imaginarias son: ',r.z1:4:2,
                                    '  (+/-)   i*',r.z2:4:2);
                         End
End;

(*Programa Principal*)
begin
  ReadLn(a,b,c);
  Raices (a,b,c,r1);
end.

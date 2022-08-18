program ejercicio16;
TYPE
   Complejo = RECORD
                  re, im : REAL;
              END;
var
    a1,a2,a3,a4 : Complejo;

procedure leer(var c1,c2);
begin
    Write('Digite los coeficientes del primer complejo: ');
  readln(a1.re,a1.im);
    Write('Digite los coeficientes del segundo complejo: ');
  Readln(a2.re,a2.im);
end;

procedure suma(c1,c2 : Complejo; var c3 :Complejo);

begin
  c3.re := c1.re + c2.re;
  c3.im := c1.im + c2.im;
  
end;
procedure mult(c1,c2 : Complejo; var c3 :Complejo);

begin
  c3.re := c1.re * c2.re;
  c3.im := c1.im * c2.im;
  
end;

begin
  leer(a1,a2);
  suma(a1,a2,a3);
  mult(a1,a2,a4);


  writeln('La Suma es: ',a3.re:0:0,' ',a3.im:1:0);
  writeln('La Multiplicacion es: ',a4.re:0:0,' ',a4.im:1:0);

end.
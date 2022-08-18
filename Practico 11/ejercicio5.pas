program ejercicio5;

type
  
    Err = (diverr, reserr ,argerr);

    Nerr = record
        num1: integer;
        case tipo : Err of 
            diverr : ();
            reserr : ();
            argerr : ();
end;
var
    x1,x2,resu1 : Nerr;

PROCEDURE division (a, b: Nerr; VAR resu: Nerr);

begin
  if (a.num1 > 0) and (b.num1 > 0) then
  begin
    resu.num1 := a.num1 div b.num1;
    writeln('La division es: ',resu.num1)
  end
    else if (a.num1 <> 0) and (b.num1 = 0) then
    begin
        resu.tipo := diverr;
        WriteLn ('Error de tipo diverr')
    end
    else if (a.num1 < 0) or (b.num1 < 0) then
    begin
        resu.tipo := argerr;
        WriteLn ('a o b coeficientes negativos...')
    end;
    
end;

PROCEDURE resta (a, b: Nerr; VAR resu: Nerr); 

begin
  if (a.num1 > 0) and (b.num1 > 0) and (a.num1 >= b.num1) then
  begin
    resu.num1 := a.num1 - b.num1;
    writeln('La resta es: ',resu.num1)
  end
    else if (a.num1 > 0) and (b.num1 > 0) and (a.num1<b.num1) then
    begin
        resu.tipo := reserr;
        WriteLn ('Error de tipo reserr')
    end;
    
end;

PROCEDURE suma (a, b: Nerr; VAR resu: Nerr); 

begin
  if (a.num1 >= 0) and (b.num1 >= 0) and (a.num1 >= b.num1) then
  begin
    resu.num1 := a.num1 + b.num1;
    writeln('La suma es: ',resu.num1)
  end
     else if (a.num1 < 0) or (b.num1 < 0) then
    begin
        resu.tipo := argerr;
        WriteLn ('a o b coeficientes negativos...')
    end;
end;

PROCEDURE producto (a, b :Nerr; VAR resu: Nerr); 

begin
  if (a.num1 > 0) and (b.num1 >= 0) then
  begin
    resu.num1 := a.num1 * b.num1;
    writeln('La multiplicacion es: ',resu.num1)
  end
    else if (a.num1 < 0) or (b.num1 < 0) then
    begin
        resu.tipo := argerr;
        WriteLn ('a o b coeficientes negativos...')
    end;
    
end;

begin
  Readln (x1.num1,x2.num1);
  division(x1,x2,resu1);
  resta (x1,x2,resu1);
  suma (x1,x2,resu1);
  producto (x1,x2,resu1);


end.

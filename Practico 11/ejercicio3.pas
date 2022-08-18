program ejercicio3;

CONST 
    MAXCAD = 50;

TYPE 
    cadena = record
        caracteres : ARRAY [1..MAXCAD] OF Char;
        largo : 0..MAXCAD;
    end;

var
    frase : cadena;
    a : char;
    num :Integer;
    b : Boolean;

procedure cargarcadena(var cad : cadena);
var
    i: Integer;

begin
i := 1;
Read(cad.caracteres[i]);
  while (i<= MAXCAD) and (cad.caracteres[i]<>'.') do
  begin
    i:= i +1;
    read (cad.caracteres[i]);
  end;
  cad.largo := i
end;

function contarOcurrencias(cad1 : cadena; l : char): integer;
var
    i,c: integer;
begin
  c := 0;
  for i:= 1 to cad1.largo do
    begin
        if (cad1.caracteres[i] = l) then
          c := c +1;
    end;
 contarOcurrencias := c;
end;

function existeVocal(cad2 : cadena):Boolean;
var
    i: Integer;
begin
existeVocal := False;
i := 1;
  while (i<= cad2.largo) and not(existeVocal) do
    begin
      if (cad2.caracteres[i]='a') or (cad2.caracteres[i]='e') or (cad2.caracteres[i]='i')or (cad2.caracteres[i]='o')or (cad2.caracteres[i]='u') then
        existeVocal := True;
        i := i +1;
    end;
end;

procedure Mostrarcadena(cad : cadena);
var
    i: Integer;

begin
  for i:= 1 to cad.largo do
    write(cad.caracteres[i]);
    WriteLn
end;

begin
  
  cargarcadena(frase);
  ReadLn;
  Write('Digite una letra: ');
  readln(a);
  num := contarOcurrencias(frase,a);
  WriteLn ('Se repite ',num,' la letra ', a);
  b := existeVocal(frase);

  if b then
    writeln ('Tiene al menos una vocal...')
  else 
    Writeln ('No tiene vocales...')

end.
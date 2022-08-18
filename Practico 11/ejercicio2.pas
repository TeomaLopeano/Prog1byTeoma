program ejercicio2;

CONST
    MAXPERSONAS = 1000;
    MAXCAD      = 20;

TYPE
   Cadena = RECORD
                letras : ARRAY [1..MAXCAD] OF Char;
                largo : 0..MAXCAD;
            END;
   Fecha = RECORD
               dia : 1..31;
               mes : 1..12;
               anio : 0..MAXINT; 
           END;
   UnaPersona = RECORD
                    nombre : Cadena;
                    FechNac : Fecha;
                    IndMadre, IndPadre : 0..MAXPERSONAS;
                END;
   Familia = RECORD
                 pers : ARRAY[1..MAXPERSONAS] OF UnaPersona;
                 tope : 0..MAXPERSONAS;
             END;
var
    julia,mateo,lucas,dinar,pia,joaquin : UnaPersona;
    nasi :familia;
    v :Boolean;


function cadenasIguales (cad1, cad2 : Cadena): Boolean;
var
    i : integer;
    b: Boolean;

begin
  b := False;
  if (cad1.largo = cad2.largo) then
    begin
        i := 1;
        while (i<=cad1.largo) and (cad1.letras[i]=cad2.letras[i]) do
        i := i+ 1;

        b := i > cad1.largo
    end;
    cadenasIguales := b;
end;

procedure desplegarCadena (cad: Cadena);
var
    i : 1..MAXCAD;
begin
  for i:= 1 to cad.largo do
    Write(cad.letras[i]);
    WriteLn
end;

procedure desplegarFecha (fec : Fecha);
begin
  write(fec.dia);
  Write('/');
  write(fec.mes);
  Write('/');
  write(fec.anio);
  WriteLn
end;

procedure antepasados (usted : Cadena; historia : Familia);
var
    i, indM, indP: Integer;

begin
  i:=1;
  while (i<=historia.tope) and not(cadenasIguales(usted,historia.pers[i].nombre)) do
    i:= i +1;
  if i <= historia.tope then
  begin
    indM:= historia.pers[i].IndMadre;
    if indM <> 0 then
      begin
        desplegarCadena(historia.pers[indM].nombre);
        desplegarFecha(historia.pers[indM].FechNac);
      end; 
    indP:= historia.pers[i].IndPadre;
    if indP <> 0 then
      begin
        desplegarCadena(historia.pers[indP].nombre);
        desplegarFecha(historia.pers[indP].FechNac);
      end; 

  end;
end;

begin
with julia do
  begin

        nombre.largo := 5;
        nombre.letras := 'julia';
        FechNac.dia := 3;
        FechNac.mes := 7;
        FechNac.anio := 2001;
        
end;
with mateo do
  begin

        nombre.largo := 5;
        nombre.letras := 'Mateo';
        FechNac.dia := 5;
        FechNac.mes := 2;
        FechNac.anio := 2003;

end;
with lucas do
  begin

        nombre.largo := 5;
        nombre.letras := 'Lucas';
        FechNac.dia := 5;
        FechNac.mes := 2;
        FechNac.anio := 2003;

end;
with pia do
  begin

        nombre.largo := 3;
        nombre.letras := 'Pia';
        FechNac.dia := 5;
        FechNac.mes := 2;
        FechNac.anio := 2003;

end;
with dinar do
  begin

        nombre.largo := 5;
        nombre.letras := 'Dinar';
        FechNac.dia := 3;
        FechNac.mes := 9;
        FechNac.anio := 2002;
        IndMadre := 1;
        IndPadre := 3;

end;

{with emiliano do
  begin
        pers[1].nombre.largo := 8;
        pers[1].nombre.letras := 'Emiliano';
        pers[1].FechNac.dia := 10;
        pers[1].FechNac.mes := 4;
        pers[1].FechNac.anio := 2002;

end;
with elizabeth do
  begin
        pers[2].nombre.largo := 9;
        pers[2].nombre.letras := 'elizabeth';
        pers[2].FechNac.dia := 3;
        pers[2].FechNac.mes := 9;
        pers[2].FechNac.anio := 2002;

end;
with nasi do
  begin
        pers[3].nombre.largo := 4;
        pers[3].nombre.letras := 'nasi';
        pers[3].FechNac.dia := 3;
        pers[3].FechNac.mes := 9;
        pers[3].FechNac.anio := 2002;

end;}

with nasi do
  begin
    pers[1] := mateo;
    pers[2] := pia;
    pers[3] := julia;
    pers[4] := dinar;
    pers[5] := lucas;
    tope := 5;
  end;

v:= cadenasIguales(julia.nombre,mateo.nombre);
if v then
    Write('Nashi')
else
    Write('Nao manito');
    WriteLn;

desplegarCadena(mateo.nombre);
desplegarCadena(julia.nombre);
desplegarFecha(mateo.FechNac);
desplegarFecha(julia.FechNac);

antepasados(dinar.nombre,nasi);
  
end.

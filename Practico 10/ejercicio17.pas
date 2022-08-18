program ejercicio17;

CONST
   CANT_LETRAS = 10;
   CANT_ARTICULOS = 15;

TYPE
   TIdioma = (ay, eo, es);

   TFecha = RECORD
                dia : 1..31;
                mes : 1..12;
                anio : 2001..9999 (* La wikipedia comienza en 2001 *)
            END;

   TNombre = ARRAY [1..CANT_LETRAS] OF Char;

   TArticulo = RECORD
                   nombre : TNombre;
                   idioma : TIdioma;
                   visitas : Integer;
                   ultima_act : TFecha;
               END;

   Wikipedia = ARRAY [1..CANT_ARTICULOS] OF TArticulo;

var
    a1,a2 : TFecha;
    b: Boolean;

function EsPosterior (f1, f2: TFecha) : boolean;
begin

    if f1.anio > f2.anio then
        EsPosterior := true
    else if (f1.mes > f2.mes) and (f1.anio = f2.anio) then
        EsPosterior := True
    else if (f1.dia > f2.dia) and (f1.mes = f2.mes) and (f1.anio = f2.anio) then
        EsPosterior := True
    else 
        EsPosterior := false;

end;

procedure ArticuloMasReciente (wiki: Wikipedia; idioma: TIdioma; VAR art: TArticulo);
var
    
    i : Integer;
begin
  for i:=1 to CANT_ARTICULOS do
  begin
    while wiki[i].idioma = idioma  do
    begin
      if EsPosterior(wiki[i].ultima_act,wiki[i+1].ultima_act) then
        art := wiki[i];
    end;
  end;
    
end;

procedure imprimirArticulosMasRecientes (wiki: Wikipedia);
var
idio1,idio2,idio3 : TIdioma;
nasi1,nasi2,nasi3 :TArticulo;

begin
idio1 := es;
idio2 := ay;
idio3 := eo;

  ArticuloMasReciente(wiki,idio1,nasi1);
  ArticuloMasReciente(wiki,idio2,nasi2);
  ArticuloMasReciente(wiki,idio3,nasi3);

WriteLn(nasi1.nombre,' ',nasi1.idioma,' ',nasi1.visitas,' ',nasi1.ultima_act.dia,' ',nasi1.ultima_act.mes,' ',nasi1.ultima_act.anio);
WriteLn(nasi2.nombre,' ',nasi2.idioma,' ',nasi2.visitas,' ',nasi2.ultima_act.dia,' ',nasi1.ultima_act.mes,' ',nasi1.ultima_act.anio);
WriteLn(nasi3.nombre,' ',nasi2.idioma,' ',nasi3.visitas,' ',nasi3.ultima_act.dia,' ',nasi1.ultima_act.mes,' ',nasi1.ultima_act.anio)
end;

begin
  readLn(a1.dia,a1.mes,a1.anio);
  ReadLn (a2.dia,a2.mes,a2.anio);
  b := EsPosterior(a1,a2);
  if b then
    Write ('Verdadero')
else
    write ('Falso')
end.
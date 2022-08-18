program ejercicio18;

CONST
   CANT_SALONES = 4;
   MAX_PIZARRONES = 8;

TYPE
   TSalon = RECORD
                asientos : Integer;
                pizarrones : 1..MAX_PIZARRONES;
                hayProyector : Boolean;
            END;

   TFacultad = ARRAY [1..CANT_SALONES] OF TSalon;
var
    j,indice,maximos,sin:integer;
faku : TFacultad;

procedure informeSalones (facu: TFacultad);
var
    i:Integer;
    

begin
  for i:=1 to CANT_SALONES do
   begin
    with facu[i] do
     writeLn(asientos,' ',pizarrones,' ',hayProyector)
   end;
end;

procedure salonMasAsientos (facu: TFacultad; VAR indSalon: Integer; VAR maxAsientos: Integer);
var 
  i,j,asientos:Integer;
  

begin
for i:=2 to CANT_SALONES do
begin
      if facu[i].asientos >= facu[i+1].asientos then
      begin
        j := i;
        asientos := facu[i].asientos
      end;
end;
WriteLn('El salon: ',j,' Es el que tiene mas Asientos con: ',asientos);
end;

function primerSalonSinAsientos (facu: TFacultad) : Integer;
var
  i:Integer;
begin
  for i:= 1 to CANT_SALONES do
    begin
        if facu[i].asientos = 0 then
          primerSalonSinAsientos := i;
    end;
end;

begin
  for j:= 1 to CANT_SALONES do
    begin
        with faku[j] do
          begin
            ReadLn(asientos,pizarrones)
          end;
        faku[j].hayProyector := True;
    end;

informeSalones(faku);
salonMasAsientos(faku,indice,maximos);
sin := primerSalonSinAsientos(faku);
WriteLn('El salon sin asientos es el salon: ',sin)
end.
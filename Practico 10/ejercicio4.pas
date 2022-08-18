program ejercicio4;

type 
    meses = (enero,febrero,marzo,abril,mayo,junio,julio,agosto,septiembre,octubre,noviembre,diciembre);
var
    coso : meses;

procedure escri(mes : meses);
begin
ReadLn (mes);
  case mes of 
    enero : WriteLn('enero');
    febrero : WriteLn('febrero');
    marzo : WriteLn('marzo');
    abril : WriteLn('abril');
    mayo : WriteLn('mayo');
    junio : WriteLn('junio');
    julio : WriteLn('julio');
    agosto : WriteLn('agosto');
    septiembre : WriteLn('septiembre');
    octubre : WriteLn('octubre');
    noviembre : WriteLn('noviembre');
    diciembre : WriteLn('diciembre');
  end;
end;

begin
escri(coso)
  
end.
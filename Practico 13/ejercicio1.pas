program ejercicio1;

const
    MAX = 5;  {algún valor apropiado}
type
      arregloEnteros = array [1..MAX] of Integer;

function BuscarElemento(e : Integer; a : arregloEnteros) : boolean;

var
    i : 1..MAX;

begin
  i:=1;
  while (i<=5) and (a[i]<>e) do
    i := i + 1;
BuscarElemento := a[i]=e
  
end;

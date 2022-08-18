program ejercicio5;

type
   Positivo = 1..MaxInt;
   ListaInt = ^TCelda;
   TCelda   = record
                info : integer;
                sig  : ListaInt
end;
type
  PosibleElem = record 
                case ok : boolean of
                  true  : (elem : integer);
                  false : ()
    end;

var
    n : ListaInt;
    pp :Positivo;
    a,s,i,m,p,par,pos,pos1,kk : Integer;
    anashi : PosibleElem;

function  suma(l : ListaInt) : integer;
var
suma1 : Integer;

begin
    suma1 := 0;
  while (l <> nil) do
  begin
   suma1:= suma1 + l^.info;
   l := l^.sig
  end;
  suma := suma1;
end;

function minimo(l : ListaInt) : integer;
var
    minimo1 : Integer;

begin
    minimo1 := l^.info;
  while (l<>nil) do
  begin
    l := l^.sig;
    if l^.info < minimo1 then
        minimo1 := l^.info
  end;
  minimo := minimo1;
end;

 function producto(l : ListaInt) : integer;
 var
    producto1 : Integer;

 begin
    producto1 := 1;
  while (l <> nil) do
  begin
   producto1 := producto1 * l^.info;
   l := l^.sig
  end;
  producto := producto1;
end;

 function cuantosPares(l : ListaInt) : integer;
 var
    cuantosPares1 : Integer;

 begin
 cuantosPares1 := 0;
   while (l<> nil) do
   begin
     if ((l^.info mod 2) = 0) then
        cuantosPares1 := cuantosPares1 + 1;
    l := l^.sig
   end;
   cuantosPares := cuantosPares1;
 end;

  function posicion(valor : integer; l : ListaInt) : integer;
  var
    posicion1,ax : Integer;

  begin
    posicion1 := 0;
    while (l <> nil ) and not(valor = l^.info) do
      begin
        posicion1 := posicion1 + 1;
        l:= l^.sig;
      end;
      posicion := posicion1;
    if (posicion = 0) then
        posicion := -1;
  end;

  procedure elemEnPos(pos : Positivo; l : ListaInt; var resultado : PosibleElem);
    var
        aux : Integer;
  begin
  aux := 1;
    while ( l <> nil) and (pos <> aux) do
    begin
      aux := aux +1;
      l := l^.sig
    end;
    resultado.ok := l <> Nil;
    if resultado.ok then
    begin
      resultado.elem := l^.info;
      Writeln ('El valor es: ',resultado.elem)
    end;
  end;

   function ultimo(l : ListaInt) : integer;
var
    aux: ListaInt;
begin
   while (l^.sig <> nil) do
   begin
     l := l^.sig;
   end;
  ultimo := l^.info;
end;

 function ordenada(l : ListaInt) : boolean;
 var
    aux : ListaInt;
 begin
 l := l^.sig;
 aux := l^.sig;
   while (l <> nil) and (aux^.info > l^.info) do
   begin
     l := l^.sig;
    aux := l^.sig;
   end;
  ordenada := l = nil;
 end;

 procedure agregar_al_principio(var l: ListaInt; elem: Integer);
var p : ListaInt;
begin()
p^.info:= elem; (*cargar el elemento*)
(* ajuste de punteros *)
p^.sig:= l;
l:= p;
end;

function Copia(l : ListaInt): ListaInt;

var
  p,aux,resu :ListaInt;

begin
  resu := nil;
  if l <> nil then
    begin
      new(resu);
      resu^.info := l^.info;
      aux := resu;
      p := l^.sig;
      while p <> nil do
      begin
        new(aux^.sig);
        aux := aux^.sig;
        aux^.info := p^.info;
        p := p^.info;
      end;
      aux^.sig := Nil;
    end;
    Copia := resu
end;

(*Programa Principal*)
 begin
    for i := 1 to 5 do
    begin
      readln (a);
      agregar_al_principio (n,a)
    end;
    s := suma(n);
    WriteLn ('La suma es: ',s);
   { m := minimo(n);
    WriteLn ('El minimo es: ',m);}
    p := producto(n);
    WriteLn ('El Producto es: ',p);
    par := cuantosPares(n);
    WriteLn ('Los pares son: ',par);
    Write ('Digite un valor : ');
    ReadLn (pos);
    pos1 := posicion(pos,n);
    WriteLn ('El valor ',pos,' se encuentra en la posicion: ',pos1);
    ReadLn(pp);
    elemEnPos(pp,n,anashi);
    kk := ultimo(n);
    WriteLn('El ultimo es: ',kk)

    
   
 end.
{
Devuelve en t un Tablero para el cual todas sus Casillas:
  * Están ocultas
  * Están libres
  * No tienen minas alrededor
}
procedure IniciarTableroVacio (var t : Tablero);

var
  i,j :Integer;

begin

  for i := 1 to CANT_FIL do {Recorro las filas}
    begin
  
      for j :=1 to CANT_COL do {Recorro las columnas}
        begin
        
          t[i,j].oculto := true; {Las Oculto}
          t[i,j].tipo := libre; {Las pongo libres}
          t[i,j].minasAlrededor := 0; {No tienen minas al rededor}
          
        end; {for j}
        
    end; {for i}

end;


{
Para toda Casilla c del Tablero que es una Mina, c deja de estar oculta
}
procedure DesocultarMinas (var t : Tablero);

var
  i,j : Integer;

begin

  for i := 1 to CANT_FIL do {Recorro las filas}
    begin
    
      for j := 1 to CANT_COL do {Recorro las columnas}
        begin
        
          if (t[i,j].tipo = mina) and (t[i,j].oculto) then
          
            t[i,j].oculto := False; {La desocultamos}
            
        end; {For j}
        
    end; {For i}

end;

{
Devuelve true si tanto la fila f como la columna c son válidas,
es decir corresponden a una casilla del tablero.
De lo contrario devuelve false.
}
function EsPosicionValida (f, c : integer) : boolean;
var
	b : boolean;

begin
  b := True;
  
  if ((f > CANT_FIL) or (f < 1 )) or ((c > CANT_COL ) or (c < 1)) then  {Pregunto si estan fuera del rango}
    b := False;
  
  EsPosicionValida := b; 

end;

{
Agrega minas al Tablero t en cada una de las casillas c correspondientes a
posiciones contenidas en m, es decir que dichas casillas cambien su tipo a Mina.

Adicionalmente asigna el valor del campo minasAlrededor de las casillas del tablero
que queden libres. Este deberá contener la cantidad de casillas adyacentes que 
son minas.
}
procedure AgregarMinas (m : Minas; var t : Tablero);

var
  i,k,j,l :integer;
  b1 :boolean;

begin

  for i := 1  to m.tope do {Recorro Hasta las minas que vaya a poner}
    begin
    
      t[m.elems[i].fila,m.elems[i].columna].tipo := Mina; {Pongo las minas}
      
    end; {for i}
 

 for k := 1 to m.tope do {Recorro todas las Minas que puse}  
  begin
  
      for j := -1 to 1 do {Recorro los alrededores}
        begin
        
          for l := -1 to 1 do 
            begin
				if (i <> 0) or (j <> 0) then {Menos en la casilla donde se encuentra la bomba}
				begin
				
					b1 := EsPosicionValida((m.elems[k].fila) + l , (m.elems[k].columna) + j); 
					
				if b1 and (t[(m.elems[k].fila) + l ,(m.elems[k].columna) + j].tipo = libre) then {Pregutno si la posicion es valida y si es libre}
				
					t[(m.elems[k].fila) + l,(m.elems[k].columna) + j].minasAlrededor := t[(m.elems[k].fila) + l,(m.elems[k].columna) + j].minasAlrededor + 1; {Entonces acumulo}
					
				end; {if}
				
					
             end; {for l}

		end; {for j}
		
	end; {for k}
	
end;

{
Si la fila f y columna c corresponden a una Casilla cas válida del Tablero t 
(ver procedimiento EsPosicionValida) y cas es Libre entonces cas deja de estar 
oculta.
Adicionalmente si la Casilla cumple con lo anterior y no tiene minas alrededor 
entonces se agrega la Posicion correspondiente a dicha casilla al final de la 
listaPos libres.
}
procedure Desocultar (f, c : integer; var t : Tablero; var libres : ListaPos);

var
	b : boolean;
	pp : Posicion; {Declaro una variable de tipo Posicion para despues llamar a "AgregarAlFinal"}

begin

  b := EsPosicionValida(f,c);
  
  
  if b and (t[f,c].oculto) and (t[f,c].tipo = libre) then {Pregunto si es valida, esta oculta y si es libre}
  begin
  
	t[f,c].oculto := false; {La desoculto}
	
	if (t[f,c].minasAlrededor = 0) then {Pregunto si no tiene minas al rededor}
	begin
	
		pp.fila := f;
		pp.columna := c;
		AgregarAlFinal(pp,libres); {Agrego a la lista}
		
	end; {if segundo}
	
  end; {if primero}

end;

  


{
Desoculta (ver procedimiento Desocultar) todas las casillas adyacentes a la
Casilla del Tablero t asociada a la fila f y la columna c.
}
procedure DesocultarAdyacentes (f, c : integer; var t : Tablero; var libres : ListaPos);

var
	i,j :integer;


begin
  
  {Recorro los alrededores}
  for i := -1 to 1 do
  begin
  
	for j := -1 to 1 do 
	begin
	
		if (i <> 0) or (j <> 0) then {Menos Donde ya desoculte}
		
			Desocultar(f+i,c+j,t,libres);
			
	end; {for j}
	
  end; {for i}
  
end;

{
Desoculta (ver procedimiento Desocultar) la Casilla del Tablero t asociada a la 
fila f y la columna c. Si esa casilla está libre y no tiene minas alrededor, 
también se desocultan todas sus casillas adyacentes. Para las casillas adyacentes 
desocultadas se repite el mismo procedimiento de desocultar a sus adyacentes si 
no tienen minas alrededor, y así sucesivamente hasta que no queden más casillas 
adyacentes que cumplan con estas condiciones.
}
procedure DesocultarDesde (f : RangoFilas;  c : RangoColum; var t : Tablero);

var
	libres : ListaPos; {Agrego libres para usarlo con "PrimeraPosicion"}

begin

libres := nil; {Lo inicializo en nil}
Desocultar(f,c,t,libres);

while (libres <> nil) do {Pregunto si tiene elementos adentro de la lista libres}

	begin

		DesocultarAdyacentes(libres^.pos.fila,libres^.pos.columna,t,libres); {Desoculto los elementos del primer elemento de la lista}
		PrimeraPosicion(libres^.pos,libres); {Elimino lo que ya hice}

	end;

  
end;

{
Devuelve true si no existe ninguna Casilla en el Tablero t que cumpla con estar 
oculta y ser Libre. En otro caso devuelve false.
}

function EsTableroCompleto(t : Tablero) : boolean;

var
	b : boolean;
	f,c : integer;

begin

f := 1;
c:= 1;
b := true;

while (f <= CANT_FIL) and b do {Pregutno si esta dentro de rango y si hay casillas libres ocultas} {Se va si tiene casillas ocultas libres o Si se fue de rango las filas}

begin

	if (t[f,c].oculto) and (t[f,c].tipo = libre) then {Pregunto si hay casillas libres ocultas}
	
		b := false; 
	
	if (c = CANT_COL) then {Recorro por columna y si llega al final reinicio y pasa de fila}
	begin
	
		f := f + 1;
		c := 0;
		
	end;
	
	c := c + 1; {Aumento la columna}
	
end;

EsTableroCompleto := b;
  
end;

program ejercicio3;

CONST
   N = 5;

TYPE
   rango = 1..N;
   Arreglo = ARRAY [rango] OF Integer;
var
   B :Arreglo;
   nazi,n2 : Integer;
   c :Boolean;

procedure Carga(var A: Arreglo);

var
   i : integer;
begin
  for i := 1 to N do
    read(A[i])
end;

function CantMayores(num: integer) : integer;
var
   i,cont : integer;
   A : Arreglo;
begin
cont:= 0;
   for i := 1 to N do
   begin
      if A[i] > num then
         cont := cont + 1;
   end;
   CantMayores := cont;
end;

function Ordenado (A : Arreglo) :Boolean;
var
   i,c : Integer;
   b :Boolean;

begin
i:=1;
 while (i < N) and (A[i+1]>A[i]) do
 begin
   if (i < N) and (A[i+1]>A[i]) then
   begin
     i := i +1;
     b := true;
   end
   else 
   begin
     i := i +1;
     b := false;
   end;
 end;
end;

procedure MaxPas (A : Arreglo; var max,i :integer);
var
   j :Integer;
begin
  for j := 2 to N do 
  begin
    if (A[j-1]< A[j]) then
      begin
         max := A[j];
         i := j;
      end;  
  end;
end;


(*******************)
(*Progrma Principal*)
(*******************)
begin
   Carga(B);
   Write ('Digite un numero: ');
   Readln (nazi);
   n2 := CantMayores(nazi);
   WriteLn('El numero mayo es : ',n2);
end.
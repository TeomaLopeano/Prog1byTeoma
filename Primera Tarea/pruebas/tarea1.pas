(*************************)
(*Function de la Funcion *)
(*************************)
function f (x: real):real;

begin
  	f := x*(sqrt(2+(sin ((pi*x+25)/10))));
end;

(***************************)
(*Function Suma de  Reimann*)
(***************************)

function sumaRiemann(izq,der : real; subintervalos :integer):Real;
var
  ancho,ant,post,a : real;
  i : Integer;

begin

  ancho := (der - izq)/subintervalos;
  post := izq;
  a := 0; (*a es la suma de reimmann*) (*Post y ant son los intervalos de adelante y atras*)

      for i := 1 to subintervalos do
          begin
            ant  := post;
            post := post + ancho;
            a := a + (f(ant)*(ancho));
          end;

  sumaRiemann := a;

end;

(**********************)
(*Funcion reiman Hasta*)
(**********************)

function riemannHasta(izq,der : real ; delta : real) :Integer;
var
  sr1,sr2,diferencia :Real;
  i :Integer;

begin

    i :=1;
    
      repeat

        sr1 := sumaRiemann(izq,der,i);
        i := i+1; (*Acumulador*)
        sr2 := sumaRiemann(izq,der,i);
        diferencia := sr2 - sr1;

      until diferencia <= delta;

    riemannHasta := i;

end;











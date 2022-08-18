{* fpc -Co -Cr -Miso -gl principal.pas *}

{
   InCo- Fing
   Laboratorio 2021 Segundo Semestre

   Programa Principal
}

program Principal;


{ Con esta directiva queda incluido el archivo tarea1.pas }
{$INCLUDE tarea1.pas}


(****************************************)
(* Variables del Programa *)
(****************************************)
var
   opcion        : char;
   ini, fin, dif : real;
   sub           : integer;

(****************************************)
(* Programa Principal *)
(****************************************)
begin

  repeat
    read(opcion);
     
    case opcion of
      'r': begin { caso sumaRiemann }
             read(ini,fin,sub);
             writeln(sumaRiemann(ini,fin,sub):0:4)
           end;
           
      'h': begin { caso riemannHasta }
             read(ini,fin,dif);
             writeln(riemannHasta(ini,fin,dif):0)
           end;
    end
      
  until opcion = 'q';	
   
end.


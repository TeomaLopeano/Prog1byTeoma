program ejercicio6;

CONST
    MAXPIRATAS = 1000;   (* Limite de piratas que pueden vivir en la isla. *)
    MAXASALTOS = 50;     (* Limite de asaltos a los que estadisticamente puede sobrevivir un pirata. *)
    MAXDIGITOSCI = 8;     (* Cantidad de digitos para almacenar un numero de cdula. *)
    MAXCADENA = 30;     (* Cantidad de letras del nombre *)

TYPE
   TipoCadena = RECORD
                    letras: ARRAY [1..MAXCADENA] OF Char;
                    tope: 0 .. MAXCADENA
                END;

   TipoCI = ARRAY [1..MAXDIGITOSCI] OF '0'..'9';

   TipoFecha = RECORD
                   dia: 1..31;     
                   mes: 1..12;     
                   anio: 0..MAXINT;
               END;

   TipoAsalto = RECORD
                    nombre_barco: TipoCadena;             (* Nombre del barco asaltado *)
                    fecha: TipoFecha;                     (* Fecha del atraco *)
                    botin: Integer;                        (* Suma de dinero obtenida para la banda *)
                END;

   ConjuntoAsaltos = RECORD (* Contiene información sobre los asaltos  *)
                         asaltos: ARRAY [1..MAXASALTOS] OF TipoAsalto;
                         tope: 0..MAXASALTOS
                     END;

   TipoCausaMuerte = (asesinato, enfermedad, accidente);

   TipoPirata = RECORD
                    nombre: TipoCadena;          (* Nombre del pirata *)
                    CI: TipoCI;                  (* Cédula de identidad *)
                    CASE estaVivo: BOOLEAN OF                (* Indica el estado vital actual del pirata *) 
                          TRUE: (asaltos: ConjuntoAsaltos);  (* Contiene información sobre los asaltos  *)
                                                             (* realizados por el pirata               *)  
                          FALSE: (causaMuerte: TipoCausaMuerte; (* Contiene datos relativos a la muerte *)
                                  fechaMuerte: TipoFecha)       (* del pirata *)
                END;

   Banda = RECORD
               pirata: ARRAY [1..MAXPIRATAS] OF TipoPirata;     (* Contiene información de los piratas  *)
               tope: 0..MAXPIRATAS                              (* Indica cantidad de piratas *)
         END;


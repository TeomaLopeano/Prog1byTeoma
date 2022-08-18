
Program ahorcado;

Uses 

crt;

Type 

     cad =    string[10];

Var 

     palabra,auxi,adi:    cad;

     letra:    char;

     posi,l:    integer;

Procedure comienzo(Var palabra,auxi,adi:cad;Var l:integer);

Var 

     i:    integer;

Begin

     gotoxy(25,10);

     writeln('JUEGO DEL AHORCADO');

     writeln('Escribe la palabra a adivinar: ');

     readln(palabra);

     l := length(palabra);{LONGITUD DE LA PALABRA A ADIVINAR}

     auxi := palabra;

     adi[0] := chr(l); {INDICO EL TAMA¥O DE LA CADENA QUE VOY ADIVINANDO}

     For i:=1 To l Do

          adi := '_'; {LLENO DICHA PALABRA CON _ EN CADA LETRA}

     clrscr;

End;

Procedure acierto(auxi:cad;Var posi:integer;letra:char);

Var 

     n:    integer;

Begin

     delete(auxi,1,posi);{BORRA HASTA DONDE HA ENCONTRADO LA LETRA}

     n := posi;

     posi := pos(letra,auxi);{BUSCA LA LETRA EN EL NUEVO TROZO DE PALABRA}

     If posi<>0 Then

          posi := posi+n;
     {SI HA ENCONTRADO OTRA POSICION,SE LA SUMA A LA ANTERIOR}

End;

Procedure dibujo(p:integer);

Var 

     parte:    string[7];

     f,c:    integer;

Begin

     parte := 'O/II/'; {DIBUJO DEL AHORCADO}

     Case p Of {DEPENDIENDO DEL N§ DE FALLOS,ESCRIBE UNA PARTE DEL MU¥ECO}

          1 :
                 Begin

                      f := 1;
                      c := 2;

                 End;

          2 :
                 Begin

                      f := 2;
                      c := 1;

                 End;

          3 :
                 Begin

                      f := 2;
                      c := 2;

                 End;

          4 :
                 Begin

                      f := 2;
                      c := 3;

                 End;

          5 :
                 Begin

                      f := 3;
                      c := 2;

                 End;

          6 :
                 Begin

                      f := 4;
                      c := 1;

                 End;

          7 :
                 Begin

                      f := 4;
                      c := 3;

                 End;

     End;

     gotoxy(7+c,18+f);

     write(parte[p]);

End;

Procedure pregunta(Var letra:char;Var posi:integer;Var adi,auxi:cad;palabra:cad)
;

Var 

     z,p:    integer;

Begin

     z := 1;

     p := 1;

     Repeat

          gotoxy(5,2);

          writeln('Dime una letra');

          readln(letra);

          posi := pos(letra,palabra);
          {CALCULA POSICION DE LA LETRA EN LA PALABRA}

          writeln('posicion: ',posi);

          If posi<>0 Then {SI SE HA ENCONTRADO SIGUE BUSCANDO EN LA PALABRA}

               Repeat

                    adi[posi] := letra;

                    gotoxy(10,10);

                    write(adi); {MUESTRA LA PALABRA QUE VAMOS DICIENDO}

                    acierto(auxi,posi,letra);

                    writeln;

               Until (posi=0)

          Else {SI NO ESTA ESA LETRA EN LA PALABRA...}

               Begin

                    gotoxy(3,14);

                    writeln('LETRAS QUE NO PERTENECEN A LA PALABRA:');

                    gotoxy(5+z,15);

                    write(letra); {VA MOSTRANDO POR PANTALLA LAS LETRAS}

                    z := z+2;

                    dibujo(p);{Y EL DIBUJO DEL AHORCADO}

                    p := p+1;

               End;

     Until (adi=palabra) Or (p=8);{HASTA ADIVINARLA O COMPLETAR EL MU¥ECO}

     writeln;

End;

Begin {PROG. PPAL}

     clrscr;

     comienzo(palabra,auxi,adi,l);{DEVUELVE LA PALABRA,AUXILIAR Y LONGITUD}

     writeln('LA PALABRA A ADIVINAR TIENE: ',l,' LETRAS');

     pregunta(letra,posi,adi,auxi,palabra);{VA PIDIENDO LAS LETRAS}

     If palabra=adi Then

          Begin

               gotoxy(20,20);

               writeln('­­­­ HAS GANADO !!!!!');

          End

     Else

          Begin

               writeln('Has perdido,la palabra era: ',palabra);

               gotoxy(20,20);

               writeln('­­­­ AHORCADO !!!!');

          End;

     READKEY

End.

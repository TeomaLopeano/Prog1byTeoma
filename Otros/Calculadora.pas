
Program Calculadora (input,output);

Uses 
crt;

Var  opcion,x,c :    integer;

Var  n1,n2,suma,resta,multi,divi,porcent:    double;
Begin
     clrscr;
     write('digite la cantidad de calculos a realizar: ');
     read(c);
     For x:=1 To c Do
          Begin
               writeln;
               writeln('seleccione una operacion:');
               writeln('   Suma:.......... 1');
               writeln('   Resta:......... 2');
               writeln('   Multiplicacion:.3');
               writeln('   Divicion:.......4');
               writeln('   Porcentaje:.....5');
               write('               OPERACION: ');
               read(opcion);

               Case opcion Of 
                    1 :
                           Begin ;
                                write('sumar:  ');
                                read(n1);
                                write('mas:  ');
                                read(n2);
                                suma := (n1+n2) ;
                                writeln('El resultado de la suma es: ',suma:9:2)
                                ;
                           End;

                    2 :
                           Begin ;
                                write('restar:  ');
                                read(n1);
                                write('menos: ');
                                read(n2);
                                resta := (n1-n2) ;
                                writeln('El resultado de la resta es: ',resta:9:
                                        2);
                           End;
                    3 :
                           Begin ;
                                write('multiplicar:  ');
                                read(n1);
                                write('por: ');
                                read(n2);
                                multi := (n1*n2) ;
                                writeln('El resultado de la multiplicacion es: '
                                        ,multi:9:2);
                           End;

                    4:
                          Begin ;
                               write('Dividir:  ');
                               read(n1);
                               write('entre: ');
                               read(n2);
                               divi := (n1/n2) ;
                               writeln('El resultado de la divicion es: ',multi:
                                       9:2);
                          End ;

                    5:
                          Begin ;
                               write('numero a buscar el porcentaje:  ');
                               read(n1);
                               write('digite el poscentaje: ');
                               read(n2);
                               porcent := (n1*n2)/100 ;
                               writeln('El porciento de su numero es: ',porcent:
                                       9:2,'%');
                          End;

                    Else
                         writeln('no existe la opcion ..... ') ;
                    writeln;
               End;

          End;
     writeln;
     readln;
     readln;
     clrscr;

End.

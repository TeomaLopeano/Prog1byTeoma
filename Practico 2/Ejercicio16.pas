
Program Ejercicio16 (input, output);

Var 
     exit:    boolean;
     x:    char;

Begin

     writeln(






'Permite el compilador de Free Pascal leer una variable booleana por la entrada estandar? Ponga "Y" si es Verdadero: '
     );
     readln(x);

     If (x = 'Y') Then
          exit := true
     Else
          exit := false;

     If (exit) Then
          writeln('Respuesta correcta ')
     Else
          writeln(' Que pete de mierda');

     readln;


End.

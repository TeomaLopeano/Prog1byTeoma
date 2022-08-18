
Program promedios6 (input,output);

Var 
     suma,promedio :    real;
     i,num,mayor,menor :    Integer;

Begin
     Write ('Ingrese un Numero: ');
     Read (num);
     i := 0;
     suma := 0;
     mayor := 0;

     While num >= 0 Do
          Begin

               suma := num + suma;

               i := i+1;

               read (num);
               If mayor<num Then
                    Begin
                         mayor := num;
                         menor := mayor;
                    End;
               If mayor<num Then
                    mayor := num;
               If menor>num Then
                    menor := num;


          End;
     promedio := suma / i ;
     WriteLn;
     WriteLn ('La suma de todos los promedios es: ',suma:3:0);
     WriteLn ('El promedio es: ',promedio:3:1);
     WriteLn ('El numero mayor es: ',mayor);
     WriteLn ('El numero menor es: ',menor);


End.

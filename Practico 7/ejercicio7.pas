
Program ejercicio7;

Var 
     x,y,z,cant :    Integer;
     x1,x2 :    real;

(*Procedimiento*)
Procedure raices(a,b,c : integer; Var raiz1,raiz2 : real; Var cant : integer);

Var 
     disc :    real;

Begin
     disc   := sqr(b) - 4 * a * c;

     If disc < 0 Then
          cant := 0

     Else
          If disc = 0 Then
               Begin

                    raiz1 := -b / (2*a);
                    raiz2 := raiz1;
                    cant := 1;
               End
     Else
          Begin
               raiz1 := (-b + sqrt(disc))/(2*a);
               raiz2 := (-b - sqrt(disc))/(2*a);
               cant := 2;
          End;

End;

(*Porgrama principal*)
Begin

     Write ('Digite los valores de a,b y c: ');
     readln (x,y,z);
     raices (x,y,z,x1,x2,cant);
     Write ('x1= ',x1:2:1,' x2= ',x2:2:1,' raices totales: ',cant)

End.

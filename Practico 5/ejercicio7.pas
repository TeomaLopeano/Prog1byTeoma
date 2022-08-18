
Program ejercicio7 (input,output);

Var 
     car:    char;
     num,total:    real;


Begin
     Write('Indique el saldo inicial con la letra "A" al inicio: ');
     ReadLn(car,num);
     read(car);
     total := num;
     While car<>'X' Do
          Begin
               ReadLn (num);

               If car = 'D' Then
                    total := total + num
               Else
                    total := total - num;


               read(car);



          End;
     Writeln('El saldo final es: ',total:4:2)
End.

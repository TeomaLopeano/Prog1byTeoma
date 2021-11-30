
Program Ejercicio22 (input,output);

Var 
     octal, decimal:    integer;

Begin
     Write('Digite su numero en base 8 (octal) de 3 cifras: ');
     Read(octal);
     WriteLn('');

     decimal := (((octal Div 100)*(8*8))+ (((octal Div 10)Mod 10)*8)+(octal Mod
                10));
     WriteLn('Octal = ',octal:3,' Decimal = ',decimal:3)


End.


Program ejercicio15 (input, output);

Var 
     a,b,c:    char;
     x,y,z,resultado:    integer;

Begin
     write('Escriba su numero Hexadecimal: ');
     ReadLn(a,b,c);

     Case a Of 
          '0'..'9' :    x := ord (a) - ord ('0');
          'A'..'F' :    x := ord (a) - ord('A') + 10;
     End;

     Case b Of 
          '0'..'9' :    y := ord (b) - ord ('0');
          'A'..'F' :    y := ord (b) - ord('A') + 10;
     End;

     Case c Of 
          '0'..'9' :    z := ord (c) - ord ('0');
          'A'..'F' :    z := ord (c) - ord('A') + 10;
     End;

     resultado := (x*256) + (y*16) + z;
     Write('Hexadecimal ',a,b,c,'  = Decimal ',resultado)
End.

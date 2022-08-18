
Program ejercicio8 (input,output);

Const 
     fin =    '$';

Var 
     texto,letrasdobles:    char;

Begin
     Write('Ingrese un Texto: ');
     Read(texto);
     If (ord(texto)>=ord('A')) And (ord(texto)<=ord('Z')) Then
          texto := chr(ord(texto)+ord('a')-ord('A'));
     While (texto <> fin) Do
          Begin
               letrasdobles := texto;
               read(texto);
               If (ord(texto)>=ord('A')) And (ord(texto)<=ord('Z')) Then
                    texto := chr(ord(texto)+ord('a')-ord('A'));

               If letrasdobles = texto Then
                    write(letrasdobles,texto,' ')

          End;

End.

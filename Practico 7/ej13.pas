
Program ej13;

Var 
     a,b :    integer;

Function divide(a,b :integer) :    Boolean;
Begin
     divide := b Mod a =0;
End;

Function primerfactor(n:integer) :    integer;



{
    repetir :
        avanzar en el factor ( factor = +1)
        hasta que divide (factor,n) sea true

        primer factor ;= factor
}

Procedure multiplicidad (a,k: integer Var n,r :integer);
{
    mientras divide (k,a)
    a := a div k
    n := n+1
}

Var 
     numero :    integer;
Begin
     readln(numero);
     Repeat
          factor := primerfactor (numero);
          numero := numero Div factor;
          writeln (factor)
     Until numero =1,

End.

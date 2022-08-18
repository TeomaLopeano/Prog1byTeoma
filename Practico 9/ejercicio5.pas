program ejercicio5;

const
    N = 3;
type
    S = 1..N;
    matriz = array [S,S] of Integer;

var
    mat : matriz;
    n1,m1: integer;

procedure leer(var matriz1 : matriz);
var
    i,j : Integer;

begin
  for i := 1 to N do
    begin
        for j := 1 to N do
        begin
          Write('Digite numero para la entrada ',i,' ',j,' : ');
          ReadLn(matriz1[i,j])
        end;
    end;
end;

procedure cambio(a: matriz ; m,n :integer);
var 
    i,j: integer;
	guardar: matriz;

begin
	for i:=1 to N do
	begin
		guardar[m,i]:= a[m,i];
		a[m,i] := a[n,i];
		a[n,i] := guardar[m,i];
	end;

	for i:=1 to N do
    begin
		for j:=1 to N do
            write(a[i,j],' ');
    Writeln;
    end;

end;



begin

  leer(mat);
  Read(n1,m1);
  if (n1 <= N) and (m1 <= N) then
  cambio(mat,m1,n1)
  else 
    Write('ERROR!');
end.
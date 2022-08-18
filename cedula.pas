program cedula;
var w , z : integer ;

procedure primera (var a : integer ; var b : integer ) ;
var z : integer ;
begin
z:= a ;
a:= z ;
b:= z*2;
end ; { pr imera }
procedure segunda ( a : integer ; b : integer ) ;
begin
a:= a + 1 ;
b:= b * 2 ;
writeln ( a , ' ' , b , ' ' , z ) ;
end ; { segunda }

function tercera ( a : integer ) : integer ;
var b : integer ;
begin
a:= a + 1 ;
primera ( a , b ) ;
b:= b * 2 ;
writeln ( a , ' ' , b , ' ' , z ) ;
tercera:= b ;
end ; { t e r c e r a }

begin
readln ( z ) ;
w:= tercera ( z ) ;
segunda ( w , z ) ;
end .
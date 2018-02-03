program deretan;
var
	x,y:integer;
	procedure Deret1( a:integer ; var b : integer );
		var
			jum,i: integer;
		begin
			jum:=0;
			for i:=1 to y do
				begin
					write(x, ' ');
					jum:=jum+1;
					x:=x+jum;
			
				end;
			
		end;
	procedure Deret2( a:integer ; var b : integer);
		var
			jum,i:integer;
		begin
			jum:=0;
			for i:=1 to x do
				begin
					write(y, ' ');
					jum:=jum+1;
					y:=y+jum;
				end;
		end;
begin
	write('input a : ');readln(x);
	write('input b : ');readln(y);
		
	Deret1(x,y);
	writeln;
	Deret2(x,y);
	readln;
end.

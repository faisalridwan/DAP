program inou;
uses crt;
	
	
var

	b : array [1..10] of integer;
	n :integer;
	procedure inputarray( var a : array of integer ; n : integer );
	var
		i : integer;
	begin
	for i:= 1 to n do
	begin
	writeln('=====================================================');
	writeln('|                                                   |');
	writeln('|             Follow IG : @faisalridwan             |');
	writeln('|                                                   |');
	writeln('=====================================================');
		write('Masukkan Nilai array : ');
	
		readln(a[i]);
	end;
	end;
	
	procedure showarray( a : array of integer ; n:integer );
	var
		i:integer;
	begin
		for i:=1 to n do
		 writeln(a[i]);
	end;
begin
	clrscr;
	writeln('=====================================================');
	writeln('|                                                   |');
	writeln('|             Follow IG : @faisalridwan             |');
	writeln('|                                                   |');
	writeln('=====================================================');
	write('Masukkan jumlah data : ');
	readln(n);
	inputarray(b,n);
	showarray(b,n);
	writeln('=====================================================');
	writeln('|                                                   |');
	writeln('|             Follow IG : @faisalridwan             |');
	writeln('|                                                   |');
	writeln('=====================================================');
	readln;
end.
		 

program anagram;
uses crt;

var

	procedure inputarray( var a : array of char ; n : integer );
	var
		i : integer;
	begin
		i:=1;
		while (i<=n) do
		begin
			write('Masukkan Nilai array : ');
			readln(a[i]);
			i:=i+1;
	end;
	end;
	
	procedure showarray( a : array of char ; n:integer );
	var
		i:integer;
	begin
		i:=1;
		while (i <=n) do
		begin
		 write(a[i]);
		 i:=i+1;
		end;
		writeln;
	end;
	
	function anagram(i:array of char; n:integer):boolean;
	var
	
	begin
		
		while ( 
	end;
begin
	clrscr;
	write('Masukkan jumlah data : ');
	readln(n);
	inputarray(b,n);
	showarray(b,n);
	write('Apakah itu palindrom : ',palindrom(b,n));
	readln;
end.

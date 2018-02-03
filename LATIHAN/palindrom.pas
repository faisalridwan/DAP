program palindrom;
uses crt;

var
	b : array [1..10] of char;
	n :integer;

	procedure inputarray( var a : array of char ; n : integer );
	var
		i : integer;
	begin
		i:=1;
		while (i<=n) do
		begin
			write('Masukkan Kata : ');
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
	
	function palindrom(a: array of char; n : integer):boolean;
	var
		i,j:integer;
		status:boolean;
	begin
	status:=true;
	i := 1;
	j:=n;
	while(status=true)and(i<j) do
	begin
		if (a[i]=a[j]) then
		begin
			i:=i+1;
			j:=j-1;
		end
		else
		status:=false;
	end;	
	palindrom:=status;
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
	write('Apakah itu palindrom : ',palindrom(b,n));
	writeln('=====================================================');
	writeln('|                                                   |');
	writeln('|             Follow IG : @faisalridwan             |');
	writeln('|                                                   |');
	writeln('=====================================================');
	readln;
	
end.
	

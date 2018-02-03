program moddiv;

var
	a,b:integer;	
	function modd(a,b:integer):integer;
	
		begin
			while (a <= b) do
				modd:= a/2;
					a=a+1;
		end;
		
	function divv(a:integer)integer;
		begin
		end;
begin
	write('masukkan nilai a : ');readln(a);
	write('Masukkan Nilai B : ');readln(b);
	write('Hasil Mod : ' , modd(a,b);
end.

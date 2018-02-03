program minmaxcode;
uses crt;
var
	a,b,c,d:integer;
	
	function max( a,b,c,d:integer):integer ;

	begin
		if (a>=b)and (a>=c) and (a>=d)then
			max:= a
		else
			if (b>a)and (b>=c) and (b>=d)then
			max:= b
			else
				if (c>a)and (c>b) and (c>=d)then
				max:= c
				else
					max:=d;
	end;
	function min( a,b,c,d:integer):integer ;

	begin
		if (a<=b)and (a<=c) and (a<=d)then
			min:= a
		else
			if (b<a)and (b<=c) and (b<=d)then
			min:= b
			else
				if (c<a)and (c<b) and (c<=d)then
				min:= c
				else
					min:=d;
	end;
begin
write('Masukkan nilai a : ');readln(a);
write('Masukkan nilai b : ');readln(b);
write('Masukkan nilai c : ');readln(c);
write('Masukkan nilai d : ');readln(d);
writeln('nilai max : ',max(a,b,c,d));
writeln('nilai min : ',min(a,b,c,d));
end.

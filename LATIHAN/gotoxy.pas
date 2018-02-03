Program Prak1a;
uses wincrt;
var nilai : integer;
begin
(*Contoh program dengan prosedur standar Clrscr, GoTo XY dan ClrEol*)
Writeln('Penggunaan prosedur standar Clrscr dan GoToXY’');
Writeln('‘_____________________________________________’');
Writeln;
GoToXY (20,5);
Writeln ('‘Anda sedang belajar Pascal’');
Writeln;
Writeln;
Writeln('‘Penggunaan prosedur standar ClrEol’');
Writeln('‘__________________________________’');
Writeln;
GoToXY (15,10);
Write('‘Masukkan sebuah nilai integer:’');
Readln(Nilai);
Gotoxy(15,10);
Clreol;
Writeln('‘Anda Pintar !!’');
end.

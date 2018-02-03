program minmax;
uses crt;
var a,b,c : integer;

procedure max;
begin
if (a>b) and (a>c) then
writeln('Jadi nilai maksimal dari ketiga bilangan tersebut adalah ',a)
else 
if (b>a) and (b>c) then
writeln('adi nilai maksimal dari ketiga bilangan tersebut adalah ',b)
else
writeln('Jadi nilai maksimal dari ketiga bilangan tersebut adalah ',c);
end;

procedure min;
begin
if (a<b) and (a<c) then
writeln('Jadi nilai minimal dari ketiga bilangan tersebut adalah ',a)
else if (b<a) and (b<c) then
writeln('Jadi nilai minimal dari ketiga bilangan tersebut adalah ',b)
else
writeln('Jadi nilai minimal dari ketiga bilangan tersebut adalah ',c);
end;

{program utama}
begin
writeln('===================================');
writeln('”PENENTUAN NILAI MAKSIMAL DAN MINIMAL”');
writeln('===================================');
writeln;
write('Masukkan Nilai Pertama : ');readln(a);
write('Masukkan Nilai Kedua   : ');readln(b);
write('Masukkan Nilai Ketiga  : ');readln(c);
writeln;
max;
min;
readln;
end.

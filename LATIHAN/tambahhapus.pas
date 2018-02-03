program tambah_edit_hapus_file;
uses crt;

type
dat = record
matkul : string[10];
hari : string[7];
dos : string[20];
sks : char;
ruang : string[10];
kuliah : word;


end;
var
filedat : file of dat;
data : dat;
pil,Ul : char;
x,y : integer;


procedure Menu;
begin
clrscr;
textcolor(white);

writeln('------------------------------------------------------------------');
textcolor(white);
writeln(' Data Mata Kuliah ');
textcolor(white);
writeln('------------------------------------------------------------------');
textcolor(white);
x:=10; y:=6;

write('1. Tambah Data ');
gotoxy(x,y+3); write('2. Edit Data ');
gotoxy(x,y+5); write('3. Hapus Data ');
gotoxy(x,y+7); write('4. Keluar ');
gotoxy(10,y+10); write('Pilih Nomor 1 Sampai 4: '); pil:=readkey

end;

procedure bukafile;
begin
assign (filedat,'dat.txt');
{$i-};
reset (filedat);
{si+};
end;

procedure Tambah;
var
lagi : char;
ada : boolean;
i : integer;
NOCR : word;
begin
Ul := 'Y';
lagi :='Y';
clrscr;
bukafile;
if IOResult<>0 then
rewrite (filedat);
repeat
clrscr;
textcolor(white);
ada:=false;
i:=0;
x:=10; y:=3;
gotoxy(x,y-1); write('----------------------- ');
gotoxy(x,y); write (' Tambah Data Mahasiswa ');
gotoxy(x,y+1); write('----------------------- ');
gotoxy(x,y+2); write('Kode : ');readln (NOCR);
while (ada=false) and (i<>filesize(filedat)) do
begin
seek(filedat,i);
read(filedat,data);
if data.kuliah=NOCR then
ada:=true
else
inc(i);
end;
if (ada=true) then
begin
gotoxy(x,y+7);write('Kode ',NOCR,' sudah ada !');
end
else
begin
seek(filedat,filesize(filedat));
data.kuliah:=nocr;
gotoxy(x,y+4);write('Mata Kuliah : ');readln(data.matkul);
gotoxy(x,y+5);write('Hari : ');readln(data.hari);
gotoxy(x,y+6);write('Dosen : ');readln(data.dos);
gotoxy(x,y+7);write('Sks : ');readln(data.sks);
gotoxy(x,y+8);write('Ruang : ');readln(data.ruang);

write (filedat,data);
end;
textcolor(white);
gotoxy(x,y+10);write('Tambah Data Lagi ? Y/T ');lagi:=upcase(readkey);
until lagi<>'Y';
close(filedat);
end;

procedure Edit;
var
lagi : char;
ada : boolean;
i : integer;
nocr : word;
begin
ul :='Y';
lagi:='Y';
clrscr;
textcolor(white);
bukafile;
if IOresult<>0 then
write ('Data Masih Kosong ')
else
begin
repeat
clrscr;
textcolor(white);
ada:=false;
i:=0;
x:=10; y:=2;
gotoxy (x,y+1); write ('------------------------------------');
gotoxy (x,y+2); write (' Edit Data Kuliah ');
gotoxy (x,y+3); write ('------------------------------------');
gotoxy (x,y+4); write('Kode : ');readln(nocr);
while (ada=false) and (i<>filesize (filedat)) do
begin
seek (filedat,i);
read (filedat,data);
if data.kuliah=nocr then
begin
textcolor(white);
ada:=true;
x:=10; y:=15;
gotoxy (x,y+1); write('---------------------------------------------------------------------');
gotoxy (x+0,y+2); write('Data Awal | Data Setelah Edit ');
gotoxy (x+0,y+3); write('---------------------------------------------------------------------');
gotoxy (x,y+4); write('Mata Kuliah : ');; writeln (data.matkul);
gotoxy (x,y+5); write('Hari : ');writeln (data.hari);
gotoxy (x,y+6); write('Dosen : ');writeln (data.dos);
gotoxy (x,y+7); write('Sks : ');writeln (data.sks);
gotoxy (x,y+8); write('Ruang : ');;writeln (data.ruang);
end
else
inc(i);
end;
if (ada=true) then
begin
textcolor(white);
data.kuliah:=nocr;
x:=47; y:=15;
gotoxy (x,y+4); write('Mata Kuliah : ');readln(data.matkul);
gotoxy (x,y+5); write('Hari : ');readln(data.hari);
gotoxy (x,y+6); write('Dosen : ');readln(data.dos);
gotoxy (x,y+7); write('Sks : ');readln(data.sks);
gotoxy (x,y+8); write('Ruang : ');readln(data.ruang);
seek(filedat,i);
write(filedat,data);
end
else
begin
textcolor(white);
gotoxy(10,11);write('Kode Mahasiswa ',nocr,' Tidak Ada ');
end;
textcolor(white);
gotoxy(10,13);write('Edit Lagi? Y/T ');lagi:=upcase(readkey);
until lagi<>'Y';
end;
close(filedat);
end;


procedure Hapus;
var
filetmp : file of dat;
lagi,hapus: char;
ada : boolean;
i : integer;
nocr : word;
begin
Ul :='Y';
lagi:='Y';
clrscr;
repeat
bukafile;
if ioresult<>0 then
write('Data Masih Kosong ')
else
begin
clrscr;
textcolor(white);
assign(filetmp,'dat.tmp');
rewrite(filetmp);
ada:=false;
i:=0;
x:=10; y:=2;
gotoxy (x+2,y); write('Hapus Data Mahasiswa ');
gotoxy (x+1,y+1); write('----------------------');
gotoxy (x,y+2); write('Kode : ');readln(nocr);
while (ada=false) and (i<>filesize(filedat)) do
begin
seek(filedat,i);
read(filedat,data);
if data.kuliah=nocr then
ada:=true
else
inc(i);
end;
if (ada=true) then
begin
gotoxy (x,y+4); write('Mata kuliah : ');writeln(data.matkul);
gotoxy (x,y+5); write('Hari : ');writeln(data.hari);
gotoxy (x,y+6); write('Dosen : ');writeln(data.dos);
gotoxy (x,y+7); write('Sks : ');writeln(data.sks);
gotoxy (x,y+8); write('Ruang : ');writeln(data.ruang);
gotoxy (x,y+10); write('Hapus Data Ini ? Y/T ');readln (hapus);
if upcase (hapus)='Y' then
begin
for i :=1 to filesize(filedat) do
begin
seek(filedat,i-1);
read(filedat,data);
if data.kuliah<>nocr then write(filetmp,data);
end;
close(filedat);
assign(filedat,'dat.txt');
erase(filedat);
assign(filetmp,'dat.tmp');
rename(filetmp,'dat.txt');
gotoxy(x,y+12);write('Kode ',nocr,' Sudah Dihapus ');
end;
end
else
begin
gotoxy(x,y+13);write('Kode ini Sudah Dihapus ');
end;
gotoxy(x,y+15);write('Hapus Data Yang Lain ? Y/T ');Lagi :=upcase(readkey);
end;
until lagi<>'Y';
end;

begin
repeat
menu;
case pil of
'1' : Tambah;
'2' : Edit;
'3' : Hapus;
'4' : Exit;
end;
until(ul<>'Y')or (pil='4');

end.

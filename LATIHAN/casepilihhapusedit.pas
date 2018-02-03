program data_mahasiswa; {judul program} 
uses crt;             {nama unit}

const max=100;          {mendeklarasikan konstanta max = 100}           

type mhs=record            {mendefinisikan tipe record dengan nama mhs} 
       nim:string[10];  {record berisi field nim(bertipe string, maksimal 10 karakter)} 
       nama: string[30];{record berisi field nama(bertipe string, maksimal 30 karakter)} 
       IPK:real;        {record berisi field IPK, bertipe real} 
     end;                {kalusa end untuk mengakhiri pendefinisian}

     kelas=array[1..max] of mhs; {mendefinisikan tipe data berupa array dari tipe mhs}

var algo :kelas; {mendeklarasikan variabel algo yang bertipe kelas} 
    i{variabel untuk indeks perulangan}, 
    n{varibel banyaknya data yang dimasukkan}, 
    j{variabel bantu untuk indeks perulangan}, 
    hapus :integer; 
    pil,jwb:char; 
    maks{variabel untuk menyimpan nilai maksimum}, 
    min{variabel untuk menyimpan nilai minimum}, 
    rata{variabel untuk menyimpan nilai rata2},jml :real; 
    temp :mhs;{variabel bantu untuk melakukan pertukaran nilai}

begin 
n:=0;  {inisialisasi variabel n dengan nilai 0} 
repeat {perulangan untuk menampilkan menu pilihan} 
clrscr; 
writeln('**************************'); 
writeln('*******MENU PILIHAN*******'); 
writeln('**************************'); 
writeln; 
writeln('1. Tambah data'); 
writeln('2. Hapus data '); 
writeln('3. Tampil     '); 
writeln('4. Statistik  '); 
writeln('5. Pengurutan '); 
writeln('0. Selesai    ');

writeln; 
write('Pilihan Anda : '); readln(pil);  
writeln;

       case pil of {statement case, pil=ekspresi} 
       '1': begin 
              n:=n+1; 
              writeln('SILAHKAN ANDA ISI DATA MAHASISWA'); 
              {mengisi data, membaca data dari keyboard dan memasukkan nilainya ke dalam variabel algo yang bertipe kelas} 
              write('NIM Mahasiswa  : '); readln(algo[n].NIM); {mengisi nim} 
              write('Nama Mahasiswa : '); readln(algo[n].nama);{mengisi nama} 
              write('IPK            : '); readln(algo[n].IPK); {mengisi ipk} 
            end;

       '2': begin 
            if n=0 then 
            begin 
                 writeln('Silahkan anda memasukkan data'); 
                 readln; 
            end 
               else 
                   begin 
                   write('Nomor Data ke: '); readln(hapus); 
                   writeln; 
                   writeln('Data yang akan dihapus!!'); 
                   writeln('NIM   :',algo[hapus].NIM); 
                   writeln('Nama  :',algo[hapus].Nama); 
                   writeln('IPK   :',algo[hapus].IPK:5:2); 
                   writeln('Hapus???[Y/T]'); readln(jwb); 
                   if upcase(jwb)='Y' then 
                      begin 
                      for i:=hapus to n-1 do 
                          begin 
                          algo[i]:=algo[i+1]; 
                          n:=n-1; 
                          end; 
                      end; 
                   end; 
            end;

       '3': begin 
            writeln('DATA MAHASISWA'); 
            writeln('----------------------------------------------------------'); 
            writeln('NIM         ', '':2, 'NAMA                  ', '':2, 'IPK'); 
            writeln('----------------------------------------------------------'); 
            {menampilkan data yang telah dimasukkan} 
            for i:=1 to n do 
                   begin 
                     with algo[i] do  {manampilkan data untuk variabel algo[i]} 
                     begin 
                       writeln(NIM:8, '':2, NAMA:25, '':2, IPK:5:2); 
                     end; 
                   end; 
                   readln; 
            end;

       '4': begin 
            maks:= algo[1].ipk; {menghitung nilai maks dengan rumus yang telah ditentukan} 
            min := algo[1].ipk; {menghitung nilai min dengan rumus yang telah ditentukan} 
            Jml := 0;            {mengisikan nilai 0 ke dalam variabel jml} 
                for i := 1 to n do {melakukan perulangan dengan indeks awal=1 sampai data ke n} 
                {perulangan untuk mengecek apakah maks,min} 
                begin 
                   with algo[i] do {manampilkan data untuk variabel algo[i]} 
                     begin 
                     if ipk > maks then maks := ipk; {mengecek apakah nilai ipk tersebut maks} 
                     if ipk < min then  min := ipk;  {mengecek apakah nilai ipk tersebut min} 
                     jml:=jml+ipk; 
                     {menaikkan nilai variabel jml sebesar algo[i].ipk}                                           
                     end;        
                end; 
            rata:=jml/n;        {menghitung rata-rata IPK dengan rumus yang telah di tentukan}                     

            writeln; 
            writeln('DATA STATISTIK IPK MAHASISWA');              {menampilkan hasil pengecekan}   
            writeln; 
            writeln('——————————–'); 
            writeln('IPK Tertinggi   : ',maks:5:2);                  {menampilkan hasil maks} 
            writeln('IPK Terendah    : ',min:5:2);                  {menampilkan hasil min}            
            writeln('Rata-Rata IPK   : ',rata:5:2);                  {menampilkan hasil rata-rata} 
            writeln('——————————–'); 
            writeln; 
            readln; 
            end;

       '5': begin 
            writeln('Data Sebelum Diurutkan: '); 
            for i:=1 to n do    {perulangan untuk menampilkan data sebelum proses pengurutan} 
            begin 
               writeln('IPK mahasiswa ke-',i,' adalah: ',algo[i].IPK:5:2); 
            end; 
            writeln;

            for i:=1 to n-1 do  {melakukan proses pengurutan data} 
            begin 
               for j:=n downto i+1 do 
               begin 
                  if algo[j].IPK < algo[j-1].IPK then { algo merupakan array data yang akan diurutkan} 
                  begin 
                     temp     := algo[j];             { tukarkan data antara algo[j] dan algo[j-1] } 
                     algo[j]  := algo[j-1]; 
                     algo[j-1]:= temp; 
                  end; 
               end; 
            end;

            writeln; 
            writeln('Data Setelah Diurutkan : '); 
            writeln('IPK dari kecil ke besar!'); 
            writeln; 
            for i:=1 to n do    {menampilkan data setelah proses pengurutan} 
            begin 
               writeln(algo[i].IPK:5:2); 
            end; 
            readln; 
            end;

       '0':   writeln('Program selesai, Silahkan kembali ke MENU!'); 
              else 
              writeln; 
              writeln('Pilih sesuai MENU yang tersedia!'); readln; 
                    end; 
                    until pil='0'; 
        end.

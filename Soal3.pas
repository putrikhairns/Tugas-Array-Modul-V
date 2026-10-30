program Soal3;
uses crt;

var
    nilai : array[1..10] of real;
    n, i, j : integer;
    temp : real;

begin
clrscr;

    repeat
        write('Masukkan jumlah mahasiswa (1-10): ');
        readln(n);
    until (n >= 1) and (n <= 10);

    for i := 1 to n do
    begin
        write('Nilai UAS mahasiswa ke-', i, ': ');
        readln(nilai[i]);
    end;

//bubblesort
    for i := 1 to n - 1 do
    begin
    for j := 1 to n - i do
        begin
        if nilai[j] > nilai[j + 1] then
            begin
            temp := nilai[j];
            nilai[j] := nilai[j + 1];
            nilai[j + 1] := temp;
            end;
        end;
    end;

writeln;
    writeln('Nilai UAS setelah diurutkan (terendah ke tertinggi):');
        for i := 1 to n do
        write(nilai[i]:0:2, ' ');

writeln;
readln;
end.

//komentar penjelasan
//array[1..10] untuk menyimpan maksimal 10 nilai
//repeat ... until untuk memastikan input jumlah mahasiswa berada diantara 1 sampai 10
//bubblesort: setiap kali nilai[j] lebih besar dari nilai[j+1], keduanya ditukar lewat variabel temp dan nilai terbesar akan bergeser ke paling kanan
//nilai[i]:0:2 agar nilai ditampilkan dengan 2 angka di belakang koma

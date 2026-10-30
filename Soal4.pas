program Soal4;
uses crt;

var
    tugas, kuis, uts, uas, rata : array[1..5] of real;
    n, i : integer;

begin
clrscr;

    repeat
        write('Masukkan jumlah mahasiswa (1-5): ');
        readln(n);
    until (n >= 1) and (n <= 5);

    for i := 1 to n do
        begin
        writeln;
        writeln('Mahasiswa ke-', i);
        write('Nilai tugas: '); readln(tugas[i]);
        write('Nilai kuis: '); readln(kuis[i]);
        write('Nilai UTS: '); readln(uts[i]);
        write('Nilai UAS: '); readln(uas[i]);

    rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
end;

writeln;
    writeln('HASIL PERHITUNGAN NILAI');
        for i := 1 to n do
    begin
        writeln;
        writeln('Mahasiswa ke-', i);
        writeln('Tugas: ', tugas[i]:0:2);
        writeln('Kuis: ', kuis[i]:0:2);
        writeln('UTS: ', uts[i]:0:2);
        writeln('UAS: ', uas[i]:0:2);
        writeln('Rata-rata: ', rata[i]:0:2);
            if rata[i] >= 70 then
            writeln('Keterangan: LULUS')
    else
        writeln('Keterangan: TIDAK LULUS');
    end;

readln;
end.

//komentar penjelasan
//4 array (tugas, kuis, uts, uas) untuk menyimpan nilai, dan 1 array rata untuk rata-ratanya
//Rata-rata dihitung dengan menjumlahkan keempat nilai lalu dibagi 4
//if rata[i] >= 70 menentukan keterangan lulus atau tidak
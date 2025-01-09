program KalkulatorSederhana;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  angka1, angka2, hasil: Real;
  operasi: Char;

begin
  try
    Writeln('  _  __    _                             _      ____   ');
    Writeln(' | |/ /   | |                           | |    |___ \  ');
    Writeln(' | ` / ___| | ___  _ __ ___  _ __   ___ | | __   __) | ');
    Writeln(' |  < / _ \ |/ _ \| `_ ` _ \| `_ \ / _ \| |/ /  |__ <  ');
    Writeln(' | . \  __/ | (_) | | | | | | |_) | (_) |   <   ___) | ');
    Writeln(' |_|\_\___|_|\___/|_| |_| |_| .__/ \___/|_|\_\ |____/  ');
    Writeln('                            | |                        ');
    Writeln('                            |_|                        ');
    Writeln('');
    Writeln('-------------------------------------');
    Writeln('Nama Project: Kalkulator Sederhana');
    Writeln('Ketua Kelompok: Ghiyats');
    Writeln('Anggota: Ilham');
    Writeln('         Prasetya');
    Writeln('         Randy');
    Writeln('         Faqih');
    Writeln('         Muiara');
    Readln;
    Writeln('Operasi yang tersedia: +, -, *, /');
    Write('Masukkan angka pertama: ');
    Readln(angka1);
    Write('Masukkan operasi (+, -, *, /): ');
    Readln(operasi);
    Write('Masukkan angka kedua: ');
    Readln(angka2);
    case operasi of
      '+': hasil := angka1 + angka2;
      '-': hasil := angka1 - angka2;
      '*': hasil := angka1 * angka2;
      '/': 
        if angka2 <> 0 then
          hasil := angka1 / angka2
        else
        begin
          Writeln('Error: Pembagian dengan nol!');
          Halt;
        end;
    else
      Writeln('Error: Operasi tidak valid!');
      Halt;
    end;
    
    Writeln('Hasil: ', hasil:0:2);
  except
    on E: Exception do
      Writeln('Terjadi kesalahan: ', E.Message);
  end;
  Writeln('');
  Write('(Tekan Enter Untuk Keluar)');
  Readln;
end.

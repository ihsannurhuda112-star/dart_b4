import 'dart:io';

void main() {
  int uts;
  int uas;
  double kehadiran;

  stdout.write('masukan nilai uts anda:');
  uts = int.parse(stdin.readLineSync() ?? "0");
  stdout.write('masukan nilai uas anda:');
  uas = int.parse(stdin.readLineSync() ?? "0");
  stdout.write('masukan nilai kehadiran anda:');
  kehadiran = double.parse(stdin.readLineSync() ?? "0");

  double rataRataNilaiAkhir(uas, uts) {
    final double nilaiAkhir = uas + uts / 2;
    return nilaiAkhir;
  }

  void kelulusan(uts, uas, kehadiran) {
    final nilaiAkhir = rataRataNilaiAkhir(uas, uts);
    if (nilaiAkhir >= 70 && kehadiran >= 75 && uas >= 60 && uts >= 60) {
      print("Selamat anda lulus");
    } else {
      print("Coba lagi");
    }
  }

  kelulusan(uts, uas, kehadiran);

  // stdout.write
}

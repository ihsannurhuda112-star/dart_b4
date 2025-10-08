import 'dart:io';

void main() {
  // soal nomor 1
  List<int> ganjil = [];

  for (int i = 1; i <= 20; i++) {
    if (i % 2 != 0) {
      ganjil.add(i);
    }
  }

  print(ganjil.join(', '));

  // soal nomor 2

  for (int i = 0; i < 5; i++) {
    stdout.write('* ');
  }
  // soal nomor 3
  int i = 0;
  while (i < 4) {
    print('\n ihsan');
    i++;
  }
  // soal nomor 4
  List<String> buah = ["Mangga", "Semangka", "Melon", "Jeruk"];

  for (var n in buah) {
    print('saya suka $n');
  }
  // soal nomor 5
  List<String> daftarBelanja = ['susu', 'tempe', 'Gula', 'Telur', 'Roti'];

  for (int i = 0; i < daftarBelanja.length; i++) {
    print('Item ke-${i + 1}: ${daftarBelanja[i]}');
  }
}

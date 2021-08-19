import 'dart:io';

// Saal 1 (Membuat Kalimat)
void Soal1() {
  var word = 'Dart';
  var second = 'is';
  var third = 'awesome';
  var fourth = 'and';
  var fifth = 'I';
  var sixth = 'love';
  var seventh = 'it!';

  print('$word $second $third $fourth $fifth $sixth $seventh');
}

// Soal 2 (Gabung Kalimat)
void Soal2() {
  var sentence = "I am going to be Flutter Developer";

  var firstWord = sentence[0];
  var secondWord = sentence[2] + sentence[3];
  var thirdWord = sentence[5] +
      sentence[6] +
      sentence[7] +
      sentence[8] +
      sentence[9]; // lakukan sendiri
  var fourthWord = sentence[11] + sentence[12]; // lakukan sendiri
  var fifthWord = sentence[14] + sentence[15]; // lakukan sendiri
  var sixthWord = sentence[17] +
      sentence[18] +
      sentence[19] +
      sentence[20] +
      sentence[21] +
      sentence[22] +
      sentence[23]; // lakukan sendiri
  var seventhWord = sentence[25] +
      sentence[26] +
      sentence[27] +
      sentence[28] +
      sentence[29] +
      sentence[30] +
      sentence[31] +
      sentence[32] +
      sentence[33]; // lakukan sendiri

  print('First Word: ' + firstWord);
  print('Second Word: ' + secondWord);
  print('Third Word: ' + thirdWord);
  print('Fourth Word: ' + fourthWord);
  print('Fifth Word: ' + fifthWord);
  print('Sixth Word: ' + sixthWord);
  print('Seventh Word: ' + seventhWord);
}

// Soal 3 (IO)
void Soal3() {
  print("Nama Depan: ");
  String? namaDepan = stdin.readLineSync();
  print("Nama Belakang: ");
  String? namaBelakang = stdin.readLineSync();
  print('$namaDepan $namaBelakang');
}

// Soal 4 (Operator)
void Soal4() {
  print("Masukkan nilai a: ");
  int? a = int.parse(stdin.readLineSync()!);
  print("Masukkan nilai b: ");
  int? b = int.parse(stdin.readLineSync()!);
  print('Nilai a = $a');
  print('Nilai b = $b');
  print('Perkalian: ${a * b}');
  print('Pembagian: ${a / b}');
  print('Penambahan: ${a + b}');
  print('Pengurangan: ${a - b}');
}

// Main Function
void main() {
  Soal1();
  print('');
  Soal2();
  print('');
  Soal3();
  print('');
  Soal4();
}

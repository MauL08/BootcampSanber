import 'dart:io';

// Soal 1 (While Looping)
void Soal1() {
  int batas = 2;
  print('Looping Pertama');
  while (batas <= 20) {
    print('$batas - I Love Coding');
    batas += 2;
  }
  batas -= 2;
  print("Looping Kedua");
  while (batas >= 2) {
    print('$batas - I will become a mobile developer');
    batas -= 2;
  }
}

// Soal 2 (For Looping)
void Soal2() {
  for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0 && i % 2 == 1) {
      print('$i - I Love Coding');
    } else if (i % 2 == 1) {
      print('$i - Santai');
    } else if (i % 2 == 0) {
      print('$i - Berkualitas');
    }
  }
}

// Soal 3 (Persegi Panjang)
void Soal3() {
  for (int i = 0; i < 4; i++) {
    print('########');
  }
}

// Soal 4 (Tangga)
void Soal4() {
  int total = 7;

  for (int i = 0; i < total; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write('#');
    }
    print('');
  }
}

void main() {
  Soal1();
  print('');
  Soal2();
  print('');
  Soal3();
  print('');
  Soal4();
  print('');
}

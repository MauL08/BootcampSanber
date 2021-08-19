// Soal 1
teriak() {
  String kata = 'Halo Sanbers!';
  return kata;
}

// Soal 2
kalikan(a, b) {
  return a * b;
}

// Soal 3
introduce(nama, umur, alamat, hobi) {
  return 'Nama saya $nama, umur saya $umur tahun, alamat saya di $alamat, dan saya punya hobby yaitu $hobi!';
}

// Soal 4
faktorial(n) {
  if (n <= 0) {
    return 1;
  }
  return n * faktorial(n - 1);
}

void main() {
  // Panggil Soal 1
  print(teriak());
  // Panggil Soal 2
  var num1 = 12;
  var num2 = 4;

  var hasilKali = kalikan(num1, num2);
  print(hasilKali);
  // Panggil Soal 3
  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby = "Gaming";

  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);
  // Panggil Soal 4
  var hasil = faktorial(6);
  print(hasil);
}

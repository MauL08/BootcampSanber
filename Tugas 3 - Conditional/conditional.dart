import 'dart:io';

// Soal 1 (Ternary Operator (IO))
void Soal1() {
  print('Apakah anda ingin menginstall Dart?');
  String? status = stdin.readLineSync();
  status == 'Y'
      ? print('Anda akan menginstall aplikasi Dart')
      : print("Aborted");
}

// Soal 2 (If-Else (IO))
void Soal2() {
  print("Masukkan nama: ");
  String? nama = stdin.readLineSync();
  print("Masukkan peran: ");
  String? peran = stdin.readLineSync(); // Penyihir, Guard, Werewolf

  if (nama == '') {
    print("Nama harus diisi!");
  } else if (peran == '') {
    print("Pilih Peranmu untuk memulai game!");
  }

  if (nama != '' && peran == '') {
    print('Halo $nama, Pilih peranmu untuk memulai game!');
  } else if (nama != '' && peran == 'Penyihir') {
    print('Selamat datang di Dunia Werewolf, $nama');
    print(
        'Halo $peran $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.');
  } else if (nama != '' && peran == 'Guard') {
    print('Selamat datang di Dunia Werewolf, $nama');
    print(
        'Halo $peran $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.');
  } else if (nama != '' && peran == 'Werewolf') {
    print('Selamat datang di Dunia Werewolf, $nama');
    print('Halo $peran $nama, Kamu akan memakan mangsa setiap malam!');
  }
}

// Soal 3 (Switch Case (IO))
void Soal3() {
  print("Pilih hari untuk Quotes: ");
  String? day = stdin.readLineSync();
  switch (day) {
    case 'Senin':
      {
        print(
            'Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.');
      }
      break;
    case 'Selasa':
      {
        print(
            'Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.');
      }
      break;
    case 'Rabu':
      {
        print(
            'Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.');
      }
      break;
    case 'Kamis':
      {
        print(
            'Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.');
      }
      break;
    case 'Jumat':
      {
        print('Hidup tak selamanya tentang pacar.');
      }
      break;
    case 'Sabtu':
      {
        print('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.');
      }
      break;
    case 'Minggu':
      {
        print(
            'Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.');
      }
      break;
  }
}

// Soal 4 (Switch Case)
void Soal4() {
  var hari = 23;
  var bulan = 8;
  var tahun = 2002;

  var tanggal;

  switch (bulan) {
    case 1:
      tanggal = '$hari Januari $tahun';
      break;
    case 2:
      tanggal = '$hari Februari $tahun';
      break;
    case 3:
      tanggal = '$hari Maret $tahun';
      break;
    case 4:
      tanggal = '$hari April $tahun';
      break;
    case 5:
      tanggal = '$hari Mei $tahun';
      break;
    case 6:
      tanggal = '$hari Juni $tahun';
      break;
    case 7:
      tanggal = '$hari Juli $tahun';
      break;
    case 8:
      tanggal = '$hari Agustus $tahun';
      break;
    case 9:
      tanggal = '$hari September $tahun';
      break;
    case 10:
      tanggal = '$hari Oktober $tahun';
      break;
    case 11:
      tanggal = '$hari November $tahun';
      break;
    case 12:
      tanggal = '$hari Desember $tahun';
      break;
  }

  print(tanggal);
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

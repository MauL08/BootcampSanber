/// Soal 1 (Range)
range(start, finish) {
  List<int> seq = [];
  // int counter = 0;
  if (start > finish) {
    for (int i = start; i >= finish; i--) {
      seq.add(i);
    }
  } else {
    for (int i = start; i <= finish; i++) {
      seq.add(i);
    }
  }

  return seq;
}

/// Soal 2 (Range with Step)
rangeWithStep(start, finish, int step) {
  List<int> seq = [];
  // int counter = 0;
  if (start > finish) {
    for (int i = start; i >= finish; i -= step) {
      seq.add(i);
    }
  } else {
    for (int i = start; i <= finish; i += step) {
      seq.add(i);
    }
  }

  return seq;
}

/// Soal 3 (List Multidimensi)
dataHandling(List input) {
  for (int i = 0; i < input.length; i++) {
    print('Nomor ID: ${input[i][0]} \n'
        'Nama Lengkap: ${input[i][1]} \n'
        'TTL: ${input[i][2]}  ${input[i][3]} \n'
        'Hobi: ${input[i][4]} \n');
  }
}

/// Soal 4 (Balik Kata)
balikKata(word) {
  String reversed = '';

  /// Loop for Reverse
  for (int i = word.length - 1; i >= 0; i--) {
    reversed += word[i];
  }

  return reversed;
}

/// Main
void main() {
  // Run Soal 1
  print(range(1, 10));
  print(range(11, 18));
  // Run Soal 2
  print(rangeWithStep(1, 10, 2));
  print(rangeWithStep(11, 23, 3));
  print(rangeWithStep(5, 2, 1));
  // Run Soal 3
  var input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang Sanjaya", "Martapura", "6/4/1970", "Berkebun"],
  ];
  dataHandling(input);
  // Run Soal 4
  print(balikKata("Kasur"));
  print(balikKata("SanberCode"));
  print(balikKata("Haji"));
  print(balikKata("racecar"));
  print(balikKata("Sanbers"));
}

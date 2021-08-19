void main() {
  print('Life');
  delay(1, 'Never Flat');
  print('Is');
}

Future delay(int time, String status) {
  return Future.delayed(Duration(seconds: time), () {
    print(status);
    return;
  });
}

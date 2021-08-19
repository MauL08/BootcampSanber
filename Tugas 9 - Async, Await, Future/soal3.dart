void main() async {
  print('Ready. Sing!');
  await line();
  await line2();
  await line3();
  await line4();
}

Future line() async {
  return await Future.delayed(Duration(seconds: 5), () {
    print('pernahkah kau merasa ......');
    return 0;
  });
}

Future line2() async {
  return await Future.delayed(Duration(seconds: 3), () {
    print('pernahkah kau merasa ........... ');
    return 0;
  });
}

Future line3() async {
  return await Future.delayed(Duration(seconds: 2), () {
    print('pernahkah kau merasa');
    return 0;
  });
}

Future line4() async {
  return await Future.delayed(Duration(seconds: 1), () {
    print('hatimu hampa pernahkah kau merasa hati mu kosong ............');
    return 0;
  });
}

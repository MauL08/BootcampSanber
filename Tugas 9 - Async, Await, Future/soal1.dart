void main() async {
  Character tmp = new Character();

  print(tmp.name);
  print('Luffy');
  print('Zoro');
  print('Killer');

  await tmp.getData();

  print('Name 3: ' + tmp.name);
}

class Character {
  String name = 'Nama Character One Piece';

  Future getData() async {
    return await Future.delayed(Duration(seconds: 3), () {
      name = 'hilmy';
      print('get data [done]');
      return 0;
    });
  }
}

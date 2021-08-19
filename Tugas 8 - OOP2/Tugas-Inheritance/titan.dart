class Titan {
  late int _powerPoint;

  int getPower() {
    return _powerPoint;
  }

  int setPower(int value) {
    if (value <= 5) {
      value = 5;
    }
    _powerPoint = value;

    return _powerPoint;
  }
}

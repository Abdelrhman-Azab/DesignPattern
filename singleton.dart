class Singleton {
  //Private static inistance only that inistance we can create
  static Singleton? _inistance;

  Singleton._();

  static getInistance() {
    if (_inistance == null) {
      _inistance = Singleton._();
    }
    return _inistance;
  }
}

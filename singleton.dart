class Singleton {
  //Private static inistance only that inistance we can create and user on the app
  static Singleton? _inistance;

  // private constructor so we can't create any inistance of singleton outside this class
  Singleton._();

  // getting or initialzing the inistance
  static getInistance() {
    if (_inistance == null) {
      _inistance = Singleton._();
    }
    return _inistance;
  }
}

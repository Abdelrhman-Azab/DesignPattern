//Singleton : ensures a class has only one inistance and provides a global point of access to it

//lazy singleton will created whenever we need it and will be removed whenever it isn't necessary 

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

void main() async {
  StrongFighter strongFighter = StrongFighter();
  HourseFighter hourseFighter = HourseFighter();

  print("Are You ready ?");
  await Future.delayed(Duration(seconds: 1));

  strongFighter.getReady();
  hourseFighter.getReady();

  print("Fight");
  await Future.delayed(Duration(seconds: 1));

  strongFighter.attack();
  hourseFighter.attack();
  await Future.delayed(Duration(seconds: 1));

  strongFighter.attack();
  hourseFighter.defend();

  print("Strong Fighter Wins");
}

abstract class AttackBehaviour {
  void attack();
}

class SwordAttack implements AttackBehaviour {
  @override
  void attack() {
    print("Attacking With Sword...");
  }
}

class AxeAttack implements AttackBehaviour {
  @override
  void attack() {
    print("Attacking With Axe...");
  }
}

abstract class DefenceBehaviour {
  void defend();
}

class ShieldDefence implements DefenceBehaviour {
  @override
  void defend() {
    print("Applying Shield Defence...");
  }
}

class NoDefence implements DefenceBehaviour {
  @override
  void defend() {
    print("No Defence...");
  }
}

class Fighter {
  AttackBehaviour attackB;
  DefenceBehaviour defendB;
  Fighter(this.attackB, this.defendB);
  void getReady() {
    print("I am ready..");
  }

  void attack() {
    attackB.attack();
  }

  void defend() {
    defendB.defend();
  }
}

class NormalFighter extends Fighter {
  NormalFighter() : super(SwordAttack(), ShieldDefence());
}

class HourseFighter extends Fighter {
  HourseFighter() : super(AxeAttack(), NoDefence());
}

class StrongFighter extends Fighter {
  StrongFighter() : super(SwordAttack(), NoDefence());
}

/*Command pattern allows us to decouple the requester of an action from the object that actually performs the action. (lamp and remote controller)

command pattern has 4 classes
1. invoker that invokes the commands (remote controller)
2. command interface that has execute and unexecute
3. command class that implements the command interface
4. receiver class like the (light lamp)

*/

void main() async {
  LightLamp lightLamp = LightLamp();
  LightOnCommand on = LightOnCommand(lightLamp);
  LightOffCommand off = LightOffCommand(lightLamp);
  RemoteController remote = RemoteController(on, off);
  remote.trunLightOnButton();
  await Future.delayed(Duration(seconds: 2));
  remote.trunLightOffButton();
}

class LightLamp {
  void lightOn() {
    print("Turning light on");
  }

  void lightOff() {
    print("Turning light off");
  }
}

abstract class Command {
  void execute() {}
  void unexecute() {}
}

class LightOnCommand implements Command {
  LightLamp light;
  LightOnCommand(this.light);
  @override
  void execute() {
    light.lightOn();
  }

  @override
  void unexecute() {}
}

class LightOffCommand implements Command {
  LightLamp light;
  LightOffCommand(this.light);
  @override
  void execute() {
    light.lightOff();
  }

  @override
  void unexecute() {}
}

class RemoteController {
  Command buttonOne;
  Command buttonTwo;

  RemoteController(this.buttonOne, this.buttonTwo);

  void trunLightOnButton() {
    buttonOne.execute();
  }

  void trunLightOffButton() {
    buttonTwo.execute();
  }
}

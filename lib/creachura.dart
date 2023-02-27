class Creachure {
  late String name;
}
mixin FlutterMixin on Creachure {
  void flutter () {print( "$name  is shaking");}
}
mixin ChirpMixin on Creachure {
void chirp () {print( "$name  is chirping");}
}

class Bird extends Creachure with FlutterMixin, ChirpMixin { }

mixin Write on Creachure {
  void write () {print( "$name  is writing");}
}
class Parrot extends Bird {}
class Dash extends Bird {}
class QuickBird extends Bird with Write {}
class Insect extends Creachure with FlutterMixin {}
class Human extends Creachure with Write {}
void main () {
  Parrot parrot1=Parrot ();
  parrot1.name="MyParrot";
  parrot1.flutter();
  parrot1.chirp();
  QuickBird quickbird1=QuickBird ();
  quickbird1.name="MyQuickBird";
  quickbird1.flutter();
  quickbird1.chirp();
  quickbird1.write();
  Human human1=Human();
  human1.name="Mansur";
  human1.write();
}
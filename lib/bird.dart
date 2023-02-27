abstract class Bird {
  late String name;
  void flutter () {print( "$name  is shaking");}
  void chirp () {print( "$name  is chirping");}
}
mixin Write on Bird {
  void write () {print( "$name  is writing");}
}
class Parrot extends Bird {}
class Dash extends Bird {}
class QuickBird extends Bird with Write {}
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
}
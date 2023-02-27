class Animel {
  String name;
  int age;
  Animel (this.name, this.age);
}
class Mammal extends Animel {
  int size;
  Mammal (this.size, super.name, super.age);
}
class Bird extends Animel {
  int massa;
  Bird (this.massa, super.name, super.age);
}
class Fish extends Animel {
  late int length;

  Fish(this.length, super.name, super.age);
}
mixin Walk {
  void walk () {
    print( "$runtimeType is walking");
  }
}
mixin Swim {
  void swim () {
    print( "$runtimeType is swiming");
  }
}
mixin Fly {
  void fly () {
    print( "$runtimeType is flying");
  }
}
class Dolphin extends Mammal with Swim {
  Dolphin (super.size, super.name, super.age);
}
class Bat extends Mammal with Walk, Fly {
  Bat (super.size, super.name, super.age);
}
class Cat extends Mammal with Walk {
  Cat (super.size, super.name, super.age);
}
class Dove extends Bird with Walk, Fly {
  Dove (super.massa, super.name, super.age);
}
class Duck extends Bird with Walk, Swim, Fly {
  Duck (super.massa, super.name, super.age);
}
class Shark extends Fish with Swim {
  Shark (super.length, super.name, super.age);
}

class FlyiniFish extends Fish with Swim, Fly {
  FlyiniFish (super.length, super.name, super.age);
}
void main () {
  Dolphin dolphin1=Dolphin (8, "MyDolphin", 8);
  dolphin1.swim();
  Duck duck1=Duck (20, "MyDuck", 2);
  print(duck1.age);
  duck1.swim();
  duck1.walk();
  duck1.fly();
}

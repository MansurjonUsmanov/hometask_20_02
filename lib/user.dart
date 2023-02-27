class User {
  late int id;
  late String name;
  void viewAllPdoducts () {
    print("$runtimeType $name view all product");
}
  void purchasePdoducts () {
    print("$runtimeType $name purchase product");
  }
}
mixin ApproveStore on User {
  void approveStore () {
    print("$runtimeType $name approved Store");
  }
}
mixin CreateStore on User {
  void createStore () {
    print("$runtimeType $name created store");
  }
}
mixin DeleteStore on User {
  void deleteStore () {
    print("$runtimeType $name deleted store");
  }
}
class Moderator extends User with ApproveStore {}
class Vendor extends User with ApproveStore, DeleteStore, CreateStore {}
void main () {
  Moderator moderator1=Moderator ();
  moderator1.name="Mymoderator";
  moderator1.id=01;
  moderator1.approveStore();
  moderator1.viewAllPdoducts();
  moderator1.purchasePdoducts();
  print(moderator1.name);
  Vendor vendor1=Vendor();
  vendor1.name="Myvebdor";
  vendor1.id=2;
  vendor1.viewAllPdoducts();
  vendor1.purchasePdoducts();
  vendor1.approveStore();
  vendor1.createStore();
  vendor1.deleteStore();
}
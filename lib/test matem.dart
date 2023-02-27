import 'dart:io';

void main() {
  var test = [
    {
      "savol": "2+2=?",
      "javoblar": ["3", "4", "5", "6"],
      "to'g'ri_javob": "4",
    },
    {
      "savol": "8*4=?",
      "javoblar": ["24", "32", "36", "64"],
      "to'g'ri_javob": "32",
    },
    {
      "savol": "25/5=?",
      "javoblar": ["2", "5", "10", "15"],
      "to'g'ri_javob": "5",
    },
  ];

  test_bajarish(test);
}

void test_bajarish(List<Map> test) {
  var balans = 0;
  for (var savol in test) {
    stdout.writeln(savol["savol"]);
    for (var i = 0; i < savol["javoblar"].length; i++) {
      stdout.writeln("${i + 1}. ${savol["javoblar"][i]}");
    }
    stdout.write("Javobingizni kiriting: ");
    var foydalanuvchi_javobi = stdin.readLineSync();
    if (foydalanuvchi_javobi == savol["to'g'ri_javob"]) {
      print("To'g'ri!");
      balans += 1;
    } else {
      print("Noto'g'ri!");
    }
  }
  print("Siz ${test.length} ta savoldan $balans ta to'g'ri javob berdingiz.");
}

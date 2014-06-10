/*
class Gear {
  String name;
  Gear(this.name);
}
*/

class Gear {
  String name;
  Gear(this.name);
  Gear.fromMap(Map data) {
    name = data['name'];
  }
}

main() {
  var utilityBelt = new Gear.fromMap({'name': 'Dart Belt'});
  print(utilityBelt.name);
}

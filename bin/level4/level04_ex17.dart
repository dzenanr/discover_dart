class Gear {
  String name;
  Gear(this.name);
  Gear.fromMap(Map data) {
    name = data['name'];
  }
  
  // Gear.________(Map data) { <- fromMapFromDb 
  Gear.fromMapFromDb(Map data) {
    name = data['NAME_STR'];
  }
}

main() {
  var utilityBelt = new Gear.fromMapFromDb({'NAME_STR': 'Dart Belt'});
  print(utilityBelt.name);
}

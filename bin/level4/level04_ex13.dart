class Hero {
  String name;
    // ________(String name) { <- Hero
    Hero(String name) {
    this.name = name;
  }        
  String toString() => name;
}

main() {
  var hero = new Hero('The Dart');
  print("My Hero is $hero");
}






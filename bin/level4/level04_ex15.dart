class Hero {
  String name;
  List powers;
  
  //Hero(this.name, ________); <- this.powers   
  Hero(this.name, this.powers);
  
  String toString() => '$name that has ${powers.join(', ')}.';
}

main() {
  var hero = new Hero('The Dart', ['productivity', 'performance']);
  print("My Hero is $hero");
}











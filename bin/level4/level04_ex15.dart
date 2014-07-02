class Hero {
  String name;
  List powers;
  
  //Hero(this.name, ________); <- this.powers   
  Hero(this.name, this.powers);
  
  String toString() => '$name has ${powers.join(', ')}.';
}

main() {
  var hero = new Hero('The Dart', ['productivity', 'performance']);
  print("$hero");
}











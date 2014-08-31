class InnocentBystander {
  int yearBorn;

  void set age(int age) {
    yearBorn = new DateTime.now().year - age;
  }

  int get age => new DateTime.now().year - yearBorn;
}

main() {
  var person = new InnocentBystander();
  person.age = 21;             // call the setter, which sets yearBorn
  print('Age: ${person.age}'); // call the getter
  print('Born: ${person.yearBorn}');
}

// superhero/sh_classes.dart
part of superhero;

class Hero {
  String name;
  List tacticalGear = [];

  Hero(this.name);

  String toString() => "I am ${name} and I am here to save the day!";
}

// ________ checkName(________ name) {  <- String, String 
String checkName(String name) {
  if (name.contains('Dart')) {
    return 'Hero';
  } else {
    return 'Sidekick';
  }
}

main() {
  var hero = "The Dart";
  var status = checkName(hero);
  print("$hero is a $status");
}

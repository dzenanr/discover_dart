
checkName(name) {
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

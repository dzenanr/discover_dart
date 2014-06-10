
// String checkName(String name, ________) { <- {heroText:"Hero", sidekickText:"Sidekick"}
String checkName(String name, {heroText:"Hero", sidekickText:"Sidekick"}) {  
  if (name.contains("Dart")) {
    return heroText;
  } else {
    return sidekickText;   
  }
}

main() {
  var status = checkName("The Dart");
  print("Captain Dart is a $status");  
}


String checkName(String name, {heroText:"Hero", sidekickText:"Sidekick"}) {  
  if (name.contains("Dart")) {
    return heroText;
  } else {
    return sidekickText;   
  }
}

main() {
  var status = checkName("Captain Dart", heroText: 'Superhero'); 
  print("Captain Dart is a $status");  

  // status = checkName("Bullseye", ________); <- sidekickText:'super-dog'
  status = checkName("Bullseye", sidekickText:'super-dog');   
  print("Bullseye is a $status");  
}

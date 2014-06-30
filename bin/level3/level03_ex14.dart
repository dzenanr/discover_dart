main() {
  var heroes = {'The Dart':null};
  
  // ________ <- heroes.putIfAbsent('Captain Dart', () {
  // ________ <-   return 'Hero';
  // ________ <- });
  heroes.putIfAbsent('Captain Dart', () {
    return 'Hero';
  });
  
  //heroes.putIfAbsent('Captain Dart', () => 'Hero');

  print(heroes);  
}

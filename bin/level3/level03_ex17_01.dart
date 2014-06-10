main() {
  var heroes = {'The Dart':null};

  // ________; <- heroes.putIfAbsent('Captain Dart', () => 'Hero')
  heroes.putIfAbsent('Captain Dart', () => 'Hero');

  print(heroes);  
}

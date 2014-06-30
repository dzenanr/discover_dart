main() {
  var heroes = {'The Dart':null};
  
  if (!heroes.containsKey('Prof. Polymer')) {
    print("Prof. Polymer isn't in the map");
  }
  
  heroes.putIfAbsent('Prof. Polymer', () {
    print("Adding Prof. Polymer");
    return 'Sidekick';
  });
  
  print(heroes);  
}

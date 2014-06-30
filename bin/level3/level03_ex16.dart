main() {
  var heroes = {'The Dart':'Hero', 'Prof. Polymer':'Sidekick'};
  
  for (var key in heroes.keys) {
    var value = heroes[key];
    print('$key: status = $value');
  }
}
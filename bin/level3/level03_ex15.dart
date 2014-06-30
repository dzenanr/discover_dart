String checkName(String name) {
  if (name.contains('Dart')) {
    return 'Hero';
  } else {
    return 'Sidekick';
  }
}

String getFromCache(Map cache, String key) {
 print('Reading cache for key: $key');
 return cache.putIfAbsent(key, () {
   print('Cache miss for key: $key');
   return checkName(key); 
 });
}

main() {
  var heroes = {};
  var theDartStatus = getFromCache(heroes, 'The Dart');
  
  // later:  
  var theDartAgain = getFromCache(heroes, 'The Dart');
    
  print('heroMap contains: $heroes');
}

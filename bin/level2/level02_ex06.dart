
// ________ checkName(________ name) {  <- String, String 
String checkName(String name) {
  if (name.contains('Dart')) {
    return 'Hero';
  } else {
    return 'Sidekick';
  }
}

main() {
  print('The Dart is a...');
  print(checkName('The Dart'));

  print('Prof. Polymer is a...');
  // print(________);  <- checkName('Prof. Polymer') 
  print(checkName('Prof. Polymer'));
}

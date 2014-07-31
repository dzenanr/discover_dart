

heroMultiplier(String message) {
  return (num m, num n) => "$message: $m x $n = ${m * n}";  
}

main() {
  var multiplier1 = heroMultiplier("The Dart multiplies"); 
  print(multiplier1(50, 3));
  
  var multiplier2 = heroMultiplier("Prof. Polymer squares"); 
  print(multiplier2(3, 3));
}
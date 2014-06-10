
String heroCalculator(num x, num y, calcFunction(n, m)) {
  if (x == 0 && y == 0) {
    return "That's not a heroic sum";
  } else {
    return calcFunction(x, y);  
  }
}

main() {
  var answer1 = heroCalculator(50, 3, (m, n) => "The Dart multiplies: $m x $n = ${m * n}");
  print(answer1);
  
  var answer2 = heroCalculator(3, 50, (m, n) {
    return "Prof. Polymer adds: $m + $n = ${m + n}"; 
  });
  print(answer2);
}
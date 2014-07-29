
var x = 1;

f1() {
  var y = 2;
  
  f2() {
    var z = 3;
    return x + y + z;
  }
  
  return f2();
}

main() {
  print(x);
  print(f1());
}

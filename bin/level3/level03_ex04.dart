main() { 
  var powerList = ['Coding', 'Testing', 'Flight', 'Speed'];
  var hasAny = powerList.any((element) => element.endsWith('ing'));
  print(hasAny);
}

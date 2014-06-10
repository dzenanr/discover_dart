main() { 
  var powerList = ['Coding', 'Testing', 'Flight', 'Speed'];
  powerList.add('Coding');
  print('List: $powerList');
  
  var powerSet = new Set.from(powerList);
  // ________; <- powerSet.add('Coding');
  powerSet.add('Coding');
  print('Set: $powerSet');
}

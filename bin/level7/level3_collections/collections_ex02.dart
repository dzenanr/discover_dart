// former level03_ex08
// current: Level07_3_ex02

main() { 
  var powerList = ['Coding', 'Testing', 'Flight', 'Speed'];
  var lengths = powerList.map((element) => element.length); // iterable of lengths
  
  // reduce the lengths iterable to a single value
  var totalLength = lengths.reduce((runningTotal, element) => runningTotal += element);   
  print(totalLength);  
}

import 'dart:async';

pause(int time) {
  display() => print('pause lasted: $time seconds');
  var duration = new Duration(seconds:time);
  new Timer(duration, display); 
}

main() {
  print('begin main');
  pause(2);
  print('end main');
}
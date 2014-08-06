// Level07_1_ex03

import 'dart:async';

pause(int time) {
  new Timer(new Duration(seconds:time), 
      () => print('pause lasted: $time seconds')); 
}

main() {
  print('pause started');
  pause(2);
  print('resting from heroic actions');
}
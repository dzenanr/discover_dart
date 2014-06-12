/**
 * To introduce the Timer class.
 */

import 'dart:async';

count(int count) {
  var duration = new Duration(seconds:count);
  // new Timer(________, () => print('after $count seconds, fight')); <- duration
  new Timer(duration, () => print('after $count seconds, fight')); 
  print('counter started with $count seconds to go');
}

main() {
  print('begin main');
  count(2);
  print('end main');
}
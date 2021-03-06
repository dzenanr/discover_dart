/**
 * To introduce the Timer class.
 */

import 'dart:async';

void count(int count) {
  var duration = new Duration(seconds: count);
  // new Timer(________, () => print('after $count seconds, save the day')); <- duration
  new Timer(duration, () => print('after $count seconds, save the day')); 
  print('counter started with $count seconds to go');
}

void main() {
  print('begin main');
  count(2);
  print('end main');
}
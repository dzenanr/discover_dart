import 'dart:async';
import 'package:test/test.dart';
import 'package:countdown/countdown.dart'; 

void main() {
  test('Countdown', () {
    var count = 3;
    var counter = new Counter(count);
    expect(counter, isNotNull);
    counter.start();
    expect(counter.timer.isActive, isTrue);
    var duration = new Duration(seconds:count);
    var timer = new Timer(duration, () => expect(counter.timer.isActive, isFalse)); 
    expect(counter.count, equals(count));
  });
}


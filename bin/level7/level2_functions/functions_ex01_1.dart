//  The function incrementCounter is closure, closing over the variable called counter.

var counter = 0;
incrementCounter() {counter++;}

main() {    
  print(counter);
  incrementCounter();
  print(counter);
}


greeter(String name, int age) {
  var message = '$name who is $age years old, says "Hi"'; 

  return () {
    print(message);
  };
}

main() {    
  // Generate the closure
  var bobGreeter = greeter("Bob", 47);

  // Use the closure
  bobGreeter();
}


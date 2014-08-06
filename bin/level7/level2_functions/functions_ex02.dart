// Level07_1_ex02

Function adder(num n) {
  // return (num i) => ________ + i; <- n
  return (num i) => n + i;
}

main() {
  print('2 + 3 = ${adder(2)(3)}'); 
}
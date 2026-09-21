void main() {
  print(multiplication(12, 3));
  print(multiplication(20, 3));

  // no return type
  printMsg();

  //PARAMETERS BUT NO RETURN TYPE
  printName("charles");
}

//HAS A RETURN TYPE
int multiplication(int one, int two) {
  var result = one * two;
  return result;
}

//NO RETURN TYPE
void printMsg() {
  print("welcome charlie");
}

//PARAMETERS BUT NO RETURN TYPE
void printName(String name) {
  print("hello $name");
}

//CLASSES ARE LIKE BLUE PRINTS YH
//THE CAN BE INSTANTIED AND VERSIONS CREATED FROM THIS BLUEPRINT
//but all names would be the same because we have no constructor to give eACH INSTANCE OF THE CAR A DIFFERENT NAME
//THE CONSTRUCTOR MUST BE THE NAME OF THE

void main() {
  //FIRST USER
  User userOne = User('chris', 30);
  print(userOne.username);
  print(userOne.loggedIn());

  //SECOND USER
  User userTwo = User('helen', 20);
  print(userTwo.username);

  //SUPER USER!!!!!!!!!!!!!1111
  SuperUser userThree = SuperUser("jane", 49);
  print(userThree.username);
  userThree.publish();
  //user three only has access to this and every other feature for a normal user.
}

class User {
  String username = "tola";
  int age = 21;

  User(String username, int age) {
    this.username = username;
    this.age = age;
  }

  String loggedIn() => 'User Logged in';
}

//USING INHERITANCE IS LIKE CREATING A SUPER USER BY EXTENDING THE QUALITIES OF A NORMAL USER AND ADDING THE EXTRA POWERS
//SO BY INHERITANCE I CAN PASS A CLASS KINDA

class SuperUser extends User {
  SuperUser(String username, int age) : super(username, age);

  void publish() {
    print("supper user published this");
  }
}

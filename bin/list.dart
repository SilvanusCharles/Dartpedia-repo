// list
// ORDERED AND ALLOWS DUPLICATES
// THINGS TO NOTE
// SPECIFY THE DATA TYPE FOR YOUR LIST THAT WAY YOU DONT HAVE JUMBLED DATA AND THE LIST FLAGS OUT VARIABLES THAT DONT BELONG
// EXAMPLE--List names = ['jesse', 'alvin', 'kiyoshi']; BECOMES --
void main() {
  List<String> names = ['jesse', 'alvin', 'kiyoshi'];

  //adding names to the list using names.add
  names.add('kitara');

  //REMOVING NAMES
  names.remove('alvin');

  print(names);
}

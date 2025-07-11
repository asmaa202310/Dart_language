// import 'dart:io';
// void main(){
//   print("=== STUDENT PROFILE ===");
//   print("Enter your college");
//   String? college = stdin.readLineSync();
//   print("College: [$college]");
//   print("Enter Year");
//   String? year = stdin.readLineSync();
//   print("Year: $year");
//   print("Enter your name");
//   String? name = stdin.readLineSync();
//   print("Name: [$name]");
//   print("Enter your ID");
//   String? ID = stdin.readLineSync();
//   print("ID: [$ID]");
//   print("Enter your major");
//   String? major = stdin.readLineSync();
//   print("Major: [$major]");
// }
import 'dart:io';

void main() {
  print("=== STUDENT PROFILE ===");
  
  // Using var for college 
  print("Enter your college");
  var college = stdin.readLineSync();
  print("College: [${college ?? 'Not provided'}]");
  
  // constant for year
  const String year = "2025";
  print("Year: $year");
  
  // Using final for name 
  print("Enter your name");
  final name = stdin.readLineSync()?.trim(); // Using ?. for null safety
  print("Name: [${name ?? 'Anonymous'}]");
  
  // final for ID 
  print("Enter your ID");
  final String? ID = stdin.readLineSync();
  print("ID: [${ID ?? 'No ID'}]");
  
  // dynamic for major 
  print("Enter your major");
  dynamic major = stdin.readLineSync();
  if (major != null) {
    major = major.toString();
  }
  print("Major: [${major ?? 'Undeclared'}]");
}
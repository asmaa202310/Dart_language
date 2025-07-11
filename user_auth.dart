  import 'dart:io';

void main() {
  print("Welcome to login system");
  print("Enter your username:");
  String? username = stdin.readLineSync();  
  print("Enter your password:");
  String? password = stdin.readLineSync();  
  
  for(int i = 3; i >= 1; i--) {
    print("Attempts left: $i"); 
    if(username == "admin" && password == "pass123") {
      print("Login successful! welcome, admin");
      break;
    }
    else if(i == 1) { 
      print("Account locked. No attempts left.");
    }
    else {
      print("Incorrect credentials, try again.");
      print("Enter your username:");
      username = stdin.readLineSync();
      print("Enter your password:");
      password = stdin.readLineSync();
    }
  }
}
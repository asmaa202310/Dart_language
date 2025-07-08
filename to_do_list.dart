import 'dart:io';
void main() async{
while(true){
  print("== to do list program ==");
  print("1 Add new task.");
  print("2 View all tasks.");
  print("3 Delete all tasks");
  print("4 Exit");
  stdout.write("Enter your choice: ");
    String? choice = stdin.readLineSync();
    File file = File('input.txt');
 //* for adding new task
 if(choice == "1"){
  print("Add new task : ");
  String? newtask = stdin.readLineSync();
  if(newtask != null && newtask.isNotEmpty){
    File file = File('input.txt');
    await file.writeAsString("\n$newtask\n",mode:FileMode.append);
    print("Task alreadly added");
  }
  else{
    print("newtask is empty, please enter one");
  }
 }
 //? for viewing all tasks in file
 else if(choice == "2"){
  if(file.existsSync()){
  File file = File('input.txt');
  String words = file.readAsStringSync();
  print("\nyour tasks:\n$words");
  }else{
    print("file is not exist");
  }
 }
// for delete all tasks
else if(choice == "3"){
if(file.existsSync()){
file.writeAsStringSync('');
print("tasks are already deleted");
}
else{
  print("file is not exist");
}
}
else if(choice == "4"){
  print("program exit");
exit(0);
}
else{
  print("Please, enter valid choice");
}
}

}
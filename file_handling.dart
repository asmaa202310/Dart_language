import 'dart:io';
void main(){
  File file = File("test.txt"); // object of file 
  String contents = file.readAsStringSync(); // read from file
  file.writeAsStringSync("mohammad anwar");
  file.writeAsStringSync("\nahmad anwar",mode:FileMode.append);
  // file.writeAsStringSync(" "); // delete all content in file but doesn't delete file itself
  // file.deleteSync(); // delete file itself and its content
  print(contents);
 print("absolute path of file : ${file.absolute.path}"); // get for existence place in device
 print("the path of file ${file.path}"); // get for path of file
 print("the size of file ${file.lengthSync()} bytes"); // get for size of file
 print("last modified ${file.lastModifiedSync()}"); // get for the last modified 

/* if(file.existsSync()){
  file.deleteSync();
}else{
  print("file is not exist");
} */

}
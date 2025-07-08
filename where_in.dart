import 'dart:math';
void main(){
  List <int> numbers = [1 , 2, 3, 4, 5, 6];
  List <int> evennumbers = numbers.where((element) => element % 2 == 0).toList();
  List <int> oddnumbers = numbers.where((ele) => ele % 2 != 0).toList();
  print(oddnumbers); // where in filters odd numbers
  print(evennumbers); // where in filters even numbers
  List <String> days = ["saturday" , "sunday" ,"monday" ,"tuseday" ,"wednesday", "thursday" , "friday"];
  List <String> startwithM = days.where((elem) => elem.startsWith("m")).toList();
  print(" days start with M : $startwithM");
}
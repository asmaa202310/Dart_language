import 'dart:math';
void main(){
  var list1 = ["asmaa" , "hagar" , "khadiga"]; // ordered and indexed
  list1[2] = "fatma"; // changable (mutable)
  print(list1);
  const List <String> names = ["koko" , "salma" , "soni"];
  //names[1] = "asmaa"; // unchangable (unmutable) because it is const
 // print(names);
 print("the first element : ${list1.first}"); // asmaa
 print("the last element : ${list1.last}"); // fatma
 var age = [];
 print(list1.isNotEmpty); // true
 print(list1.isEmpty); // false
 print(age.isNotEmpty); // false
 print(age.isEmpty); // true
 print("list in reversed ${list1.reversed}"); // ["khadiga" , "hagar" , "asmaa"]

 list1.add("mohammad");
 print(list1); // ["asmaa" , "hagar" , "fatma" , "mohammad"]

 list1.addAll(["table" , "ruler"]);
 print(list1); // ["asmaa" , "hagar" , "fatma" , "mohammad" , "table" , "ruler"]

 list1.insert(2,"shahd");
 print(list1); // ["asmaa" , "hagar" , "shahd" ,"fatma" , "mohammad" , "table" , "ruler"]

 list1.insertAll(3,["as", "ha"]); // ["asmaa" , "hagar" , "shahd" , "as" , "ha" ,"fatma" , "mohammad" , "table" , "ruler"]
  print(list1);

 list1.remove("as");
 print(list1); // ["asmaa" , "hagar" , "shahd" , "ha" , "fatma" , "mohammad" , "table" , "ruler"]

 list1.removeAt(3); // ["asmaa" , "hagar" , "shahd" , "fatma" , "mohammad" , "table" , "ruler"]
 print(list1);

 list1.removeLast();
 print(list1); // ["asmaa" , "hagar" , "shahd" , "fatma" , "mohammad" , "table"]

 list1.removeRange(5,6); // ["asmaa" , "hagar" , "shahd" , "fatma" , "mohammad"]
 print(list1);

 bool isLoggedin = true;
 List <String> items = ["Home","About",if(isLoggedin) "Profile",if(!isLoggedin) "Login" ,"contact"]; // ["Home" , "About" , "Profile" , "contact"]
  print(items);

 List <String> allitems = [...names, ...items]; // combine for 2 lists ["koko" , "salma" , "soni" , "Home" , "About" , "Profile" , "contact" ]
  print(allitems);

}
import 'dart:math';
void main(){
  Set <String> drinks = {"water" , "juice" , "milk"};
  print(drinks); 
  drinks.add("coocktil"); // {"water" , "juice" , "milk" , "coocktil"}
  print(drinks); 
  drinks.addAll(["coffee" , "apple"]); // {"water" , "juice" , "milk" , "coocktil" , "coffee" , "apple"}
  print(drinks); 
  drinks.remove("apple"); // {"water" , "juice" , "milk" , "coocktil" , "coffee"}
  print(drinks); 
  print(drinks.contains("water")); // true
  print(drinks.contains("banana")); // false
  print("the first element  : ${drinks.first}"); // water
  print("the last element is : ${drinks.last}"); // coffee
  print(drinks.isEmpty); // false
  print(drinks.isNotEmpty); // true
  print("length of set is ${drinks.length}"); // 5
  for (String i in drinks)
          print(i);
}
import 'dart:math';
void main(){
  Map <String,String> countries = {
    "Egypt":"Cairo",
    "Palestine":"Al-Qudus",
    "Yumen":"Sanaa"
  };
  print(countries); // {"Egypt":"Cairo","Palestine":"Al-Qudus","Yumen":"Sanaa"}
  print(countries["Palestine"]); // Al-Qudus
  print(countries.keys); // {"Egypt , "Palestine" , "Yumen"}
  print(countries.values); // {"Cairo" , "Al-Qudus" , "Sanaa"}
  print(countries.isEmpty); // false
  print(countries.isNotEmpty); // true
  print(countries.length); // 3
}
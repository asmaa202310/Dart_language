import 'dart:math';
void main(){
Random randomValue = new Random(); // instance of Random instance is used to find all random values of all types
//? it is not neccessary to create object of Random() it is possible to put Random() directly
int randomnum1 = randomValue.nextInt(10); // between 0 to 9 , 10 is not included
print("random number1 $randomnum1");
int randomnum2 = randomValue.nextInt(10)+1; // between 1 to 10 , 10 is included
print("random number2 $randomnum2");
double randomdouble = randomValue.nextDouble(); // between 0.0 to 1.0 
print("random number2 $randomdouble");
bool randombool = randomValue.nextBool(); // true or false
print("random number2 $randombool");
// int randomnum11 = Random().nextInt(10); // between 0 to 9 , 10 is not included
// print("random number1 $randomnum1");
// int randomnum12 = Random().nextInt(10)+1; // between 1 to 10 , 10 is included
// print("random number2 $randomnum2");
// double randomdouble11 = Random().nextDouble(); // between 0.0 to 1.0 
// print("random number2 $randomdouble");
// bool randombool11 = Random().nextBool(); // true or false
// print("random number2 $randombool");

// generate random number between 2 numbers
int Min = 10;
int Max = 20;
int randomnum = Min + Random().nextInt((Max + 1) - Min);
print("random number between 10 and 20 : $randomnum");
print(pow(10,2)); // 10 to the power 2 = 100
print(min(10,20)); // 10
print(max(10,20)); // 20
print(sqrt(25)); // 5
}
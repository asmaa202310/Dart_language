abstract class Animal{
  String? name;
  double? speed;
  Animal(this.name , this.speed);
  void run();
  void display(){
    print("the name $name");
    print("the speed $speed");
  }
}
// canFly can be used only in case of class that inherits from another
mixin Run on Animal{
 @override
void run(){
  print("$name runs with speed $speed");
}
}
class Horse extends Animal with Run{ // class inherited from Animal can use (Run)
Horse(String name , double speed) : super(name , speed);
}
void main(){
  var horse = Horse("horse" , 2);
  horse.run();
}
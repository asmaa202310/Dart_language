class Laptop{
  Laptop(){
    print("laptop constructor");
  }
  Laptop.namedConstructor(){
    print("laptop named constructor");
  }
}
class Dell extends Laptop{
  Dell():super.namedConstructor(){ // call named constructor and dell constructor
    print("dell constructor");
  }
}

// parameterized constructor inheritance
class Car{
String? name;
String? color;
car(){
  print("car constructor");
}
Car(String name , String color){
this.name = name;
this.color = color;
}
}
class Tesla extends Car{
Tesla(String name , String color):super(name , color){
  print("Name : $name");
  print("color : $color");
}
}
void main(){
  Dell dell = new Dell(); 
  Tesla tesla = new Tesla("tesla" , "black");

}
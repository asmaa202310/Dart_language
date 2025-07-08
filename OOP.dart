import 'dart:io';

class Student{
  String? name;
  int? age;
  int? grade;
  void display(){
    print("the name of student $name");
    print("the age of student $age");
    print("the grade of student $grade");
  }
}

class Person{
  String? name;
  String? phone;
  int? age;
  bool? isMarried;
  void display(){
    print("the name of person $name");
    print("the age of person $age");
    print("the phone of person $phone");
    print(" is married $isMarried");
  }
}

class Camera{
  String? name;
  String? color;
  double? price;
  void display(){
    print("the name of camera $name");
    print("the color of camera $color");
    print("the price of camera $price");
  }
}

class Car{
  String? type;
  String? color;
  int? speed;
  double? price;
  Car(String type, String color, int speed, double price){
    this.type = type;
    this.color = color;
    this.speed = speed;
    this.price = price;
  }
    void display(){
      print("type $type");
      print("color $color");
      print("speed ${speed} km/hr");
      print("price ${price} LE");

    }
  }
  class Book{
    String? title;
    int? pages;
    Book(this.title , this.pages); // shortcut constructor
    void display(){
      print("title $title");
      print("the number of pages $pages");
    }
  }

  class Patient{
    String? name;
    int? age;
    String? disease;
    Patient(this.name ,this.disease, this.age);
    Patient.namedcConstructor(this.name , this.disease , [this.age = 10] );
    void display(){
      print("name: $name");
      print("age: $age");
      print("disease: $disease");
    }
  }

  class Laptop{
    String? type;
    double? price;
    Laptop(){
      print("this is a default constructor");
    }
  }

  class Bird{
    String? name;
    bool? isfly;
    Bird({String? name , bool? isfly}){
      this.name = name;
      this.isfly = isfly;
    }
    void display(){
      print("the name of bird $name");
      print("is fly $isfly");
    }
  }

  class Girl{
    final String? name1; // constant properity
    final int? length;
    final double? weight;
    const Girl({this.name1 , this.length , this.weight}); // constant constructor
    void display(){
      print("the name $name1");
       print("the length $length");
       print("weight $weight");
     }
  }


void main(){
Student student = Student(); // instansiation create object of class
student.name = "asmaa";
student.age = 20;
student.grade = 100;
student.display();
Person person = Person();
person.name = "hagar";
person.phone = "01091149924";
person.age = 18;
person.isMarried = false;
person.display();
Camera camera = Camera();
camera.name = "sony";
camera.color = "black";
camera.price = 200.00;
camera.display();
Camera camera2 = Camera();
camera2.name = "sumsung";
camera2.color = "brown";
camera2.price = 300.00;
camera2.display();
Car car = Car("BMW","red",80,300000.00); // intialize constructor when creating object
car.display();
Book book = Book("animal friends" , 40);
book.display();
Patient patient = Patient("asmaa", "cough" , 20);
patient.display();
Laptop laptop = Laptop(); // once ctreating object called default constructor 
Bird bird = Bird(isfly: true , name:"parrot"); // can write parameters in unordered way through writing the name of attribute
bird.display();
Patient patient2 = Patient.namedcConstructor("hagar","cold");
patient2.display();
const Girl girl = Girl(name1:"asmaa" , length: 165 , weight: 45); // constant object
girl.display();
}
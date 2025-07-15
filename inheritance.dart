class Person{
  String? name;
  int? age;
  void display(){
    print("Name : $name");
    print("Age : $age");
  }
}
class Engineer extends Person{
  String? nameOfCompany;
  String? specialty;
  int? yearsOfExperience;
  void diplayEngineer(){
    print("the name of company : $nameOfCompany");
    print("speciality : $specialty");
    print("the years of experience : $yearsOfExperience");
  }
}

void main(){
  var engineer = Engineer(); // create object of child class and access all attributes in parent class
  engineer.name = "asmaa anwar";
  engineer.age = 20;
  engineer.nameOfCompany = "Apple";
  engineer.specialty = "Flutter development";
  engineer.yearsOfExperience = 2;
  engineer.display();
  engineer.diplayEngineer();
  
}
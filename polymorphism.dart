//* polymorphism is the ability of object to take many forms
class Animal{
  void eat(){
    print("animal is eating"); // job
  }
}
class Horse{
  @override
  void eat(){
    print("horse is eating grass"); // another job
  }
}

class Employee{
  void salary(){
    print("the salary of employee is 1000");
  }
}
class Manager extends Employee{
  @override
  void salary(){
    print("the salary of manager is 2000");
  }
}
class Developer extends Employee{
  @override
  void salary(){
    print("the salay of developer is 3000");
  }
}
void main(){
  Animal animal = Animal();
  animal.eat();
  Horse horse = Horse();
  horse.eat();


  Employee employee = Employee();
  employee.salary();
  Manager manager = Manager();
  manager.salary();
  Developer developer = Developer();
  developer.salary();

}

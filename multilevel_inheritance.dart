class Person{
  String? name;
  int? age;
  void display1(){
    print("Name : $name");
    print("Age : $age");

  }
}
class Employee extends Person{
  int? Employeeid;
  double? salary;
  void display2(){
    print("employee id : $Employeeid");
    print("salary : $salary");
  }
}
class Manager extends Employee{
  String? department;
  int? numOfTeams;
  void display3(){
    print("department : $department");
    print("the number of teams : $numOfTeams");

  }
}
void main(){
  Manager manager = new Manager();
  manager.name = "asmaa anwar";
  manager.age = 20;
  manager.salary = 50000.00;
  manager.Employeeid = 1;
  manager.numOfTeams = 5;
  manager.department = "AI";
  manager.display1();
  manager.display2();
  manager.display3();
}
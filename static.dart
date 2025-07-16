//* If you want to define a variable or method that is shared by all instances of a class, you can use the static keyword.
//* Static members are accessed using the class name. It is used for memory management.

class Employees{
  static int count = 0;
  // constructor
  Employees(){
    count++; // incrementing count
  }
  void total(){
    print("the number of employees is $count");
  }
}
void main(){
Employees employees1 = Employees();
employees1.total();
Employees employees2 = Employees();
employees2.total();
Employees employees3 = Employees();
employees3.total();
Employees employees4 = Employees();
employees4.total();
}
abstract class Bank{
  String? name;
  double? rate;

  // constuctor
  Bank(this.name , this.rate);

  // abstract method
  void interest();

  // non-abstract method
  void display(){
    print("the name of bank $name");
  }
}
class CIB extends Bank{
    CIB(String name , double rate) : super(name , rate);
    @override
    void interest(){
      print("the rate of interest $rate");
    }
}
class EB extends Bank{
    EB(String name , double rate) : super(name , rate);
    @override
    void interest(){
      print("the rate of interest $rate");
    }
}
class AB extends Bank{
    AB(String name , double rate) : super(name , rate);
    @override
    void interest(){
      print("the rate of interest $rate");
    }
}
void main(){
  var cib = CIB("CIB", 200000000.00);
  cib.display();
  cib.interest();

    var eb = EB("Eygpt Bank", 300000000.00);
  eb.display();
  eb.interest();

    var ab = AB("Ahly Bank", 400000000.00);
  ab.display();
  ab.interest();
   
}
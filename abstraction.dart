abstract class Laptop{  // abstract class
  void type(); // abstract methods
  void speed();
}

class Dell extends Laptop{
  @override
  void type(){
    print("type of laptop is dell");
  }
  @override
  void speed(){
    print("the speed of laptop is 50 MB/Hz");
  }
}
class Hp extends Laptop{
  @override
  void type(){
    print("type of laptop is hp");
  }
  @override
  void speed(){
    print("the speed of laptop is 80 MB/Hz");
  }
}
class Acer extends Laptop{
  @override
  void type(){
    print("type of laptop is acer");
  }
  @override
  void speed(){
    print("the speed of laptop is 90 MB/Hz");
  }
}
class Lenovo extends Laptop{
  @override
  void type(){
    print("type of laptop is lenovo");
  }
  @override
  void speed(){
    print("the speed of laptop is 100 MB/Hz");
  }
}
void main(){
  var dell = Dell();
  dell.type();
  dell.speed();

  var hp = Hp();
  hp.type();
  hp.speed();

  Acer acer = Acer();
  acer.type();
  acer.speed();

  Lenovo lenovo = Lenovo();
  lenovo.type();
  lenovo.speed();

}
// mixin equals to inheritance
mixin canFly{ 
  void fly(){
    print("I can fly");
  }
}
mixin canWalk{
  void walk(){
    print("I can walk");
  }
}
class Human with canWalk {}
class Bird with canFly , canWalk {}
void main(){
  var human = Human();
  human.walk();

  var bird = Bird();
  bird.fly();
  bird.walk();
}
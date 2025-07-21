abstract class Area{
  void area();
}
abstract class Premiter{
  void premiter();
}
class Rectangle implements Area , Premiter{
  int? length;
  int? width;
  Rectangle(this.length , this.width);
  @override
  void area(){
    print("the area of rectangle ${length! * width!}");
  }
  @override
  void premiter(){
    print("the premiter of rectangle ${2*(length! + width!)}");
  }
}
void main(){
  var rec = Rectangle(20 , 10);
  rec.area();
  rec.premiter();
}
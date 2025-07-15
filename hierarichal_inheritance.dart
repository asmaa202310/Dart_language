class Shape{
  double? d1;
  double? d2;
}
class Triangle extends Shape{ // hierarical inheritance
  double area(){
     return 0.5 * d1! * d2!;
  }
}
class Rectangle extends Shape{
  double area(){
    return d1! * d2!;
  }
}
void main(){
  Rectangle rectangle = new Rectangle();
  rectangle.d1 = 2;
  rectangle.d2 = 3;
  print("the area of rectangle : ${rectangle.area()}");
  Triangle triangle = new Triangle();
  triangle.d1 = 2;
  triangle.d2 = 3;
  print("the area of triangle : ${triangle.area()}");
}
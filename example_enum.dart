//* enum is decclared outside class
enum gender{
  female,
  male,
  other
}
class Person{
  String? Fname;
  String? Lname;
  gender? gen;
  Person(this.Fname , this.Lname , this.gen);
  void display(){
    print("first name : $Fname");
    print("last name : $Lname");
    print("gender : $gen");
  }
}
void main(){
  Person person = Person("asmaa", "anwar", gender.female);
  person.display();
}
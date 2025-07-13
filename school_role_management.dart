enum Subject {
  math,
  english,
  science,
  history,
  art
}
class Person {
  String? _name;
  int? _age;
  static int totalPeople = 0;

  Person(this._name, this._age) {
    totalPeople++;
  }

  Person.namedConstructor() {
    totalPeople++;
  }

  void introduce() {
    print("Name: $_name");
    print("Age: $_age");
  }

  void showTotalPeople() {
    print("Total number of people: $totalPeople");
  }

  Type role(){
    return this.runtimeType;
  }
}

class Teacher extends Person {
  Subject _subject;
  double? _salary;

  Teacher(String name, int age, this._subject, this._salary) : super(name, age);

  @override
  void introduce() {
    super.introduce();
    print("Subject: $_subject");
    print("Salary: $_salary");
  }
  @override
   Type role(){
    return this.runtimeType;
  }
}

class Student extends Person {
  String? _grade;
  List<Subject> _enrolledSubjects = [];

  Student(String name, int age, this._grade, this._enrolledSubjects) : super(name, age);

  @override
  void introduce() {
    super.introduce();
    print("Grade: $_grade");
    print("Enrolled subjects: $_enrolledSubjects");
  }
  @override
   Type role(){
    return this.runtimeType;
  }
}

void main() {
  var person = Person("Asmaa" , 20);
  var teacher = Teacher("Mohammad", 35, Subject.math, 5000.00);
  var student = Student("Sara", 16, "A+", [Subject.math, Subject.english]);

  List<Person> list = [teacher, student];

  for (var p in list) {
    p.introduce();
    print("Role : ${p.role()}");
    print("-----------");
  }

  person.showTotalPeople();
}

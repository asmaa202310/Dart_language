//* super is used to call constructor and methods in child class but not used in parent class
class Car{
    int noOfSeats = 5;
}
class Tesla extends Car{
    int noOfSeats = 6;
    void display(){
        print("The number of seats in tesla : $noOfSeats"); // print the number of seats in car
        print("the number of seats in car :${super.noOfSeats}"); // print the number of seats in tesla because of existing super that calls method in the previous class
    }
}

class Laptop{
    void display(){
        print("laptop display");
    }
}
class Dell extends Laptop{
    void display(){
        print("dell laptop");
        super.display();
    }
}
class Lenavo extends Dell{
    void display(){
        print("lenavo laptop");
        super.display();
    }
}
void main(){
   // Tesla tesla = Tesla(); // delete comment during display this is about Car and Tesla class
   // tesla.display();
   Lenavo lenavo = Lenavo();
   lenavo.display();
}
class BankClient{
  final int? _id;
  final String? _name;
  double _Balance = 0; // '?' is deleted because I put intial value
  double total = 0;

  BankClient(this._id , this._name);
  double get Balance => this._Balance!;
  void add(double amount){ // for deposit money
     total += amount;
  }
  void subtractIfPossible(double value){ // for withdrawing money
    total -= value;
  }
  void display(){
    print("the Number of clients : $_id");
    print("the total of Balance : ${total}");
  }
}

void main(){
  var bankClient = BankClient(1,"asmaa");
  bankClient.add(500.00);
  bankClient.add(100.00);
  bankClient.add(200.00);
  bankClient.add(300.00);
  bankClient.display(); 
  bankClient.subtractIfPossible(100.00);
  bankClient.display();
}
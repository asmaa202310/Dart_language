class Device{
  String? name;
  String? type;
  int? speed;
  int? serialNumber;
  Device({ String? name , String? type , int? speed , int? serialNumber}){
    this.name = name;
    this.type = type;
    this.speed = speed;
    this.serialNumber = serialNumber;
  }
  void display(){
    print("name $name");
    print("type $type");
    print("spped ${speed} GHz");
    print("serial number $serialNumber");
  }
}

class ConstantDevice{
  final String? model;
  final String? category;
  final int? size;
  const ConstantDevice({this.model , this.category , this.size});
  void display(){
    print("model $model");
    print("category $category");
    print("size ${size} inches");
  }
}

void main(){
  Device device1 = Device(name: "Laptop" , type: "Dell" , speed: 20 , serialNumber: 4);
  device1.display();
  Device device2 = Device(name: "Phone" , type: "Realme" , speed: 10 , serialNumber: 2);
  device2.display();
  const ConstantDevice constantDevice = ConstantDevice(model:"Redmi", category: "2024", size: 20);
  constantDevice.display();
}
class Hacker{
  String? name;
  int? level;
  Hacker(this.name , this.level);
  void attack(String target){
    print("you are attacking : $target");
  }
}
// ScriptKiddie, ProHacker, and CyberTerrorist
class ScriptKiddie extends Hacker{
  ScriptKiddie(String name , int level):super(name , level);
  @override
   void attack(String target){
    super.attack(target);
    print("$name uses basic scripts against $target.");
  }

}

class ProHacker extends Hacker{
  ProHacker(String name , int level):super(name , level);
  @override
   void attack(String target){
    super.attack(target);
    print("$name uses advanced techniques against $target.");
  }

}

class CyberTerrorist extends Hacker{
  CyberTerrorist(String name , int level):super(name , level);
  @override
   void attack(String target){
    super.attack(target);
 print("$name is launching a cyber attack on $target!");  }

}

void main(){
  var hacker = Hacker("asmaa" , 1);
  var scriptKiddie = ScriptKiddie("hagar" , 2);
  var proHacker = ProHacker("mohammad", 3);
  var cyberTerrorist = CyberTerrorist("ahmad" , 4);
  hacker.attack("github.com");
  scriptKiddie.attack("whats app");
  proHacker.attack("instgram.com");
  cyberTerrorist.attack("chrome");
  
}
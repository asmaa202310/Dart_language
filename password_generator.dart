import 'dart:math';
class Password{
  static String? passwordgenrate(){
    List<String> alpha = 'abcdefghijklmnopqrstvuwxyz'.split(' ');
    List<int> nums = [0,1,2,3,4,5,6,7,8,9];
    List<String> specialChars =["@","%","*","&","#","!","/","^"];
    List<String> password = [];
    for(int i=0 ; i<2;i++){
      password.add(alpha[Random().nextInt(alpha.length)]);
      password.add(nums[Random().nextInt(nums.length)].toString());
      password.add(specialChars[Random().nextInt(specialChars.length)]);
    } return password.join();
  }
}
void main(){
  print(Password.passwordgenrate()); // static method is called by class name
}
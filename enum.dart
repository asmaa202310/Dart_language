//* enum is a special type that represents fixed number of constant values
enum Seasons{
  spring,
  summar,
  fall,
  winter
}
void main(){
  var season = Seasons.spring;
  switch(season){
    case Seasons.spring :
    print("is is spring");
    break;

     case Seasons.fall :
    print("is is fall");
    break;

     case Seasons.winter :
    print("is is winter");
    break;

     case Seasons.summar :
    print("is is summar");
    break;
  }
}
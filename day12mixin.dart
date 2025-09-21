mixin Engine
{
  void startengine(){
    print("the engine is starting");
  }
}
mixin music
{
  void Playing() => print("music is playing");
}
class Car with Engine,music{
  void drive() => print("car is moving");
}

void main(){
  var car=Car();
  car.startengine();
  car.Playing();
  car.drive();
}
class student
{
  String name;
  int? age;
  student(this.name,[this.age]);
  void display(){
    print("Name:$name,Age:${age?? "not provided"}");
  }
}
void main()
{
var s1=student("ravi");
var s2=student("raju",19); 
s1.display();
s2.display();




String? name;
print(name ?? "Guest");

name = "Yuvaraju";
print(name?.toUpperCase()); 

int? x;
x ??= 5; 
print(7);


String? city = "VIJAYAWADA";
print(city.toUpperCase());

String? town="hyderabad";
print(town.toLowerCase());





}
void main()
{
  int age=21;
  String name="yuvarju";
  var value=19;
  dynamic x=10;
  x="ravi";
  print("name:$name,age:$age,value:$value,$x");
  
  dynamic data = {"name": "Yuvaraju", "age": 21};

  print(data["name"]);  
  print(data["age"]);
  data = "Now I am just a string!";
  print(data);
  final today = DateTime.now();  
  const pi = 3.14159;            

  print("Today: $today");
  print("Pi: $pi");
}




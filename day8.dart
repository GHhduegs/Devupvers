void main()
{
  List<int> numbers=[1,2,3,4,5];
  print(numbers[0]);
  print(numbers[1]);
  numbers.add(6);
  print(numbers);
  numbers.remove(4);
  print(numbers);
  numbers.addAll([10,20]);
  for (int i in numbers);
  print(numbers);

Set<String>fruits={"apple","bananna","papayya"};
fruits.add("mango");
print(fruits);
fruits.remove("banannna");
print(fruits);

  
  Map<String, String> capitals = {
    'India': 'New Delhi',
    'USA': 'Washington D.C.',
    'Japan': 'Tokyo'
  };

  
  print(capitals['India']); 

  capitals['France'] = 'Paris';
  print(capitals);


  capitals.remove('USA');
  print(capitals);


  capitals.forEach((key, value) {
    print('$key → $value');
  


});


  List<String> students = ['Ram', 'Sam', 'John'];
  print("Initial List: $students");

  
  print("First student: ${students[0]}");


  students[1] = 'Sita';  
  print("After update: $students");

  
  students.remove('John');  
  print("After delete: $students");

  
  students.add('Hari');
  print("After adding Hari: $students");



  






}



import 'dart:io';
void main()
{
  stdout.write("enter your name:");
  String? name =stdin.readLineSync();
  print("welcome to dart $name");
  stdout.write("enter your age:");
  int age=int.parse(stdin.readLineSync()!);
  print("your age is:$age");
}
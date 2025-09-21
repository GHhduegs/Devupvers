void main() {
  print("Program started");

  Future.delayed(Duration(seconds: 2), () {
    return "Data fetched!";
  }).then((value) {
    print(value);
  }).catchError((e) {
    print("Error: $e");
  });

  print("Program ended");
}

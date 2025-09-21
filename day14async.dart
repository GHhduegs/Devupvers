Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 5));
  return "Data fetched successfully!";
}

void main() async {
  print("Program started");
  String result = await fetchData();
  print(result);
  print("Program ended");
}

enum Days {
   monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday 
   }

void main() {
  var today = Days.monday;

  switch (today) {
    case Days.monday:
      print("Start of the week");
      break;
    case Days.Friday:
      print("Weekend is near!");
      break;
    case Days.Saturday:
    case Days.Sunday:
      print("Weekend!");
      break;
    default:
      print("Midweek");
  }
}

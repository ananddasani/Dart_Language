/*
Wrapping a set of function's parameter in [] marks them as a optional positional parameter
*/

String say(String from, String msg, [String? device]) {
  var result = "$from says $msg";

  if (device != null) result = "$result with a $device";

  return result;
}

void main() {
  print(say("Anand", "Hello"));

  print(say("Om", "Hi", "Whatsapp"));
}

/*
OUTPUT

Anand says Hello
Om says Hi with a Whatsapp
*/

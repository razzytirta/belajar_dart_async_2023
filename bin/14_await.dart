Future<String> firstName() async {
  return 'Razzi';
}

Future<String> lastName() async {
  return 'Tirta';
}

Future<String> sayHello(String name) async {
  return "Hello $name";
}

Future<void> say() async {
  var first = await firstName();
  var last = await lastName();
  var hello = await sayHello("$first $last");

  print(hello);
}

void main() {
  say();
  print('Done');
}

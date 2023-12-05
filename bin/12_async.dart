Future<String> sayHello(String name) async {
  return 'Hello $name';
}

void main() {
  sayHello('Razzi').then((value) => print(value));

  print('Done');
}

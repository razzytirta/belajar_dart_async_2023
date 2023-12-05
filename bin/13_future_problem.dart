Future<String> firstName() async {
  return 'Razzi';
}

Future<String> lastName() async {
  return 'Tirta';
}

Future<String> sayHello(String name) async {
  return "Hello $name";
}

void main() {
  firstName().then((firstName) {
    return lastName().then((lastName) {
      var fullName = "$firstName $lastName";
      return sayHello(fullName);
    });
  }).then((value) => print(value));
}

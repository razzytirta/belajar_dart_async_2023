Future<String> name() {
  return Future.value('Razzy Tirta Fachrurazzi');
}

void main() {
  name()
      .then((value) => value.split(" "))
      .then((value) => value.reversed)
      .then((value) => value.map((e) => e.toUpperCase()))
      .then((value) => print(value));

  print("Finish");
}

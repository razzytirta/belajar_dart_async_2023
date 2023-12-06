Stream<String> names() {
  return Stream.fromIterable(['razzi', 'tirta', 'fachrurazzi']);
}

Future<String> fullname() async {
  String name = "";
  await for (String value in names()) {
    name += "$value ";
  }

  return name.trim();
}

void main() {
  fullname().then((value) => print(value));

  print("Done");
}
